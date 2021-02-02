const path = require("path")
const yaml = require("js-yaml")
const schema = require("./aclimatiseTypes")
const fs = require(`fs-extra`)

exports.createSchemaCustomization = ({
  actions: { createTypes },
  schema,
  getNodeAndSavePathDependency,
  pathPrefix = ``,
}) => {
  createTypes([
    // A single wrapper with a single filetype, such as bwa_aln.wl
    schema.buildObjectType({
      name: "CondaWrapper",
      interfaces: ["Node"],
      fields: {
        stableUrl: {
          type: "String",
          resolve(source, fieldArgs, context) {
            // Load node data of this node and the file attached to it
            const fileDetails = getNodeAndSavePathDependency(
              source.file,
              context.path
            )
            const wrapperDetails = getNodeAndSavePathDependency(
              source.id,
              context.path
            )

            // Calculate the file path (not URL) the file needs to be located at
            const publicPath = path.join(
              process.cwd(),
              `public`,
              wrapperDetails.stableUrl
            )

            // Copy the file from its current location to the filepath above
            if (!fs.existsSync(publicPath)) {
              fs.copySync(fileDetails.absolutePath, publicPath, {
                dereference: true,
              })
            }

            return `${pathPrefix}/${wrapperDetails.stableUrl}`
          },
        },
        executable: {
          type: "CondaExecutable",
          resolve(source, args, context, info) {
            return context.nodeModel.getNodeById({
              id: source.executable,
              type: "CondaExecutable",
            })
          },
        },
        file: {
          type: "File",
          resolve(source, args, context, info) {
            return context.nodeModel.getNodeById({
              id: source.file,
              type: "File",
            })
          },
        },
      },
    }),
    schema.buildObjectType({
      name: "CondaPackage",
      fields: {
        name: "String!",
        publicURL: "String!",
        succeededExeCount: "Int!",
        allExeCount: "Int!",
        succeededProportion: "Float!",
        versions: {
          type: "[CondaVersion]",
          resolve(source, args, context, info) {
            return context.nodeModel.getNodesByIds({
              ids: source.versions,
              type: "CondaVersion",
            })
          },
        },
      },
      interfaces: ["Node"],
      extensions: {
        infer: false,
      },
    }),

    schema.buildObjectType({
      name: "CondaVersion",
      fields: {
        name: "String!",
        publicURL: "String!",
        packageName: "String!",
        succeededExeCount: "Int!",
        allExeCount: "Int!",
        succeededProportion: "Float!",
        package: {
          type: "CondaPackage",
          resolve(source, args, context, info) {
            const ret = context.nodeModel.getNodeById({
              id: source.fields.package,
              type: "CondaPackage",
            })
            return ret
          },
        },
        executables: {
          type: "[CondaExecutable]",
          resolve(source, args, context, info) {
            return context.nodeModel.getNodesByIds({
              ids: source.executables,
              type: "CondaExecutable",
            })
          },
        },
      },
      interfaces: ["Node"],
      extensions: {
        infer: false,
      },
    }),
    schema.buildObjectType({
      name: "CondaExecutable",
      fields: {
        wrappers: {
          type: "[CondaWrapper]",
          resolve(source, args, context, info) {
            return context.nodeModel.getNodesByIds({
              ids: source.wrappers,
              type: "CondaWrapper",
            })
          },
        },
        name: "String!",
        versionName: "String!",
        packageName: "String!",
        succeeded: "Boolean!",
        // path: "String!",
        version: {
          type: "CondaVersion",
          resolve(source, args, context, info) {
            return context.nodeModel.getNodeById({
              id: source.fields.version,
              type: "CondaVersion",
            })
          },
        },
        publicURL: "String!",
      },
      interfaces: ["Node"],
      extensions: {
        infer: false,
      },
    }),
  ])
}

async function createPackages(helpers) {
  const {
    graphql,
    actions: { createNode, createNodeField, createPage },
    createContentDigest,
    createNodeId,
    getNode,
  } = helpers
  const result = await graphql(`
    {
      allCondaVersion {
        group(field: packageName) {
          nodes {
            id
            publicURL
            internal {
              fieldOwners
            }
            succeededExeCount
            allExeCount
          }
          fieldValue
        }
      }
    }
  `)
  await Promise.all(
    result.data.allCondaVersion.group.map(async ({ nodes, fieldValue }) => {
      let versionSucceeded = nodes.reduce(
        (acc, curr) => acc + curr.succeededExeCount,
        0
      )
      let versionTotal = nodes.reduce((acc, curr) => acc + curr.allExeCount, 0)
      let succeededProportion = versionSucceeded / versionTotal

      const packageUrl = `/packages/${fieldValue}`
      const packageId = createNodeId(fieldValue)

      const fields = {
        id: packageId,
        name: fieldValue,
        succeededExeCount: versionSucceeded,
        allExeCount: versionTotal,
        succeededProportion,
        publicURL: packageUrl,
        versions: nodes.map(node => node.id),
        parent: null,
        children: [],
      }
      const pack = {
        ...fields,
        internal: {
          type: "CondaPackage",
          contentDigest: createContentDigest(fields),
        },
      }
      await createNode(pack)
      for (let node of nodes) {
        const resNode = getNode(node.id)
        // Give the version a handle to its parent package
        createNodeField({ node: resNode, name: "package", value: packageId })
        // We now have enough information for the version page to be created
        await createPage({
          component: path.resolve(`./src/templates/version.js`),
          path: resNode.publicURL,
          context: {
            version: resNode.id,
          },
        })
      }
      await createPage({
        component: path.resolve(`./src/templates/package.js`),
        path: fields.publicURL,
        context: {
          package: fields.id,
        },
      })
    })
  )
}

async function createVersions(helpers) {
  const {
    graphql,
    actions: { createNode, createNodeField, createPage },
    createContentDigest,
    createNodeId,
    getNode,
  } = helpers

  const result = await graphql(`
    {
      allCondaExecutable {
        group(field: versionName) {
          nodes {
            id
            succeeded
            internal {
              fieldOwners
            }
          }
          fieldValue
        }
      }
    }
  `)
  await Promise.all(
    result.data.allCondaExecutable.group.map(async ({ nodes, fieldValue }) => {
      const [packageName, versionName] = fieldValue.split(path.sep)
      // Calculate the successes for each version in the package
      const versionSucceeded = nodes.reduce(
        (acc, curr) => acc + (curr.succeeded ? 1 : 0),
        0
      )
      const versionTotal = nodes.length
      const succeededProportion = versionSucceeded / versionTotal
      const publicUrl = `/packages/${fieldValue}`
      const id = createNodeId(fieldValue)
      const fields = {
        id,
        succeededExeCount: versionSucceeded,
        succeededProportion,
        allExeCount: versionTotal,
        publicURL: publicUrl,
        name: versionName,
        packageName,
        executables: nodes.map(node => node.id),
        parent: null,
        children: [],
      }
      const version = {
        ...fields,
        internal: {
          type: "CondaVersion",
          contentDigest: createContentDigest(fields),
        },
      }
      await createNode(version)

      // Let the children have access to the parent
      for (let node of nodes) {
        const resNode = getNode(node.id)
        createNodeField({ node: resNode, name: "version", value: version.id })
      }
    })
  )
}

function filenameAttributes(relativePath) {
  const [packageName, versionName, filename] = relativePath.split(path.sep)
  const [stem, extension] = filename.split(".")
  const exeUrl = `/packages/${packageName}/${versionName}/${stem}`
  const wrapperUrl = `${exeUrl}/${filename}`
  return {
    packageName,
    versionName,
    filename,
    stem,
    extension,
    exeUrl,
    wrapperUrl,
  }
}

async function createExecutables(helpers) {
  const {
    graphql,
    actions: { createNode, createNodeField, createPage },
    createContentDigest,
    loadNodeContent,
    createNodeId,
    getNode,
  } = helpers

  // Only select files 3 levels deep, from the git repos
  const result = await graphql(`
    {
      allFile(
        filter: {
          relativePath: { regex: "/.*/.*/.*/" }
          sourceInstanceName: { in: ["Wrappers", "Definitions"] }
        }
      ) {
        group(field: name) {
          fieldValue
          nodes {
            id
            relativePath
            absolutePath
            extension
            publicURL
            internal {
              type
              content
              owner
            }
          }
        }
      }
    }
  `)

  await Promise.all(
    result.data.allFile.group.map(async ({ nodes, fieldValue }) => {
      const wrappers = []
      let ymlNode

      // Create a CondaWrapper node for each file node
      for (let node of nodes) {
        const { wrapperUrl } = filenameAttributes(node.relativePath)

        // Create a redirect page for each node, and store the URL on the file nodes
        const wrapperFields = {
          id: createNodeId(wrapperUrl),
          stableUrl: wrapperUrl,
          file: node.id,
        }
        const wrapper = {
          ...wrapperFields,
          internal: {
            type: "CondaWrapper",
            contentDigest: createContentDigest(wrapperFields),
          },
        }
        wrappers.push(wrapper.id)
        await createNode(wrapper)

        // The remaining node creation requires the YML node
        if (node.extension === "yml") {
          ymlNode = node
        }
      }

      // If we haven't seen a YAML node, skip making the tool page
      if (!ymlNode) {
        return
      }
      const { versionName, packageName, stem, exeUrl } = filenameAttributes(
        ymlNode.relativePath
      )
      // We can parse the base YAML file to obtain more useful metadata
      const contents = await loadNodeContent(ymlNode)
      const parsed = yaml.safeLoad(contents, { schema: schema })
      const success =
        parsed.positional.length +
          parsed.named.length +
          parsed.subcommands.length >
        0

      // Now create the node for the single file within that package
      const id = createNodeId(ymlNode.relativePath)
      const fields = {
        id,
        name: stem,
        versionName: packageName + path.sep + versionName,
        succeeded: success,
        packageName,
        wrappers: wrappers,
        publicURL: exeUrl,
        children: [],
      }
      const exe = {
        ...fields,
        internal: {
          type: "CondaExecutable",
          contentDigest: createContentDigest(fields),
        },
      }
      await createNode(exe)
      await createPage({
        component: path.resolve(`./src/templates/executable.js`),
        path: exeUrl,
        context: {
          exe: id,
        },
      })
    })
  )
}

exports.createPages = async helpers => {
  // We build up the structures in reverse order because nodes are immutable
  await createExecutables(helpers)
  await createVersions(helpers)
  await createPackages(helpers)
}
