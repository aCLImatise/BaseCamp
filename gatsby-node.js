const path = require("path")
const yaml = require("js-yaml")
const schema = require("./aclimatiseTypes")

exports.createSchemaCustomization = ({ actions: { createTypes }, schema }) => {
  createTypes([
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
          type: "[File]",
          resolve(source, args, context, info) {
            return context.nodeModel.getNodesByIds({
              ids: source.wrappers,
              type: "File",
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

async function createExecutables(helpers) {
  const {
    graphql,
    actions: { createNode, createPage },
    createContentDigest,
    loadNodeContent,
    createNodeId,
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
      const yamlNode = nodes.filter(node => node.extension === "yml")[0]
      if (!yamlNode) {
        return
      }
      const [packageName, versionName, filename] = yamlNode.relativePath.split(
        path.sep
      )
      const [stem, extension] = filename.split(".")

      // We can parse the base YAML file to obtain more useful metadata
      const contents = await loadNodeContent(yamlNode)
      const parsed = yaml.safeLoad(contents, { schema: schema })
      const success =
        parsed.positional.length +
          parsed.named.length +
          parsed.subcommands.length >
        0

      // Now create the node for the single file within that package
      const publicUrl = `/packages/${packageName}/${versionName}/${stem}`
      const id = createNodeId(yamlNode.relativePath)
      const fields = {
        id,
        name: stem,
        versionName: packageName + path.sep + versionName,
        succeeded: success,
        packageName,
        // path: yamlNode.relativePath.split(".")[0],
        wrappers: nodes.map(node => node.id),
        publicURL: publicUrl,
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
        path: publicUrl,
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
