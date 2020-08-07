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
        versions: {
          type: "[CondaVersion]",
          resolve(source, args, context, info) {
            return context.nodeModel.getNodesByIds({
              ids: source.versions,
              type: "CondaVersion",
            })
          },
        },

        // resolve(source, args, context){
        //   const children = context.nodeModel.getNodesByIds({
        //     ids: source.children,
        //     type: "CondaVersion"
        //   })
        //   return children.reduce((acc, curr) => acc + curr.fields.succeededExeCount, 0)

        allExeCount: "Int!",

        // resolve(source, args, context){
        //   const children = context.nodeModel.getNodesByIds({
        //     ids: source.children,
        //     type: "CondaVersion"
        //   })
        //   return children.reduce((acc, curr) => acc + curr.fields.allExeCount, 0)
      },
      interfaces: ["Node"],
    }),

    // const children = context.nodeModel.getNodesByIds({
    //   ids: source.children,
    //   type: "CondaExecutable"
    // })
    schema.buildObjectType({
      name: "CondaVersion",
      fields: {
        name: "String!",
        publicURL: "String!",
        succeededExeCount: "Float!",
        allExeCount: "Int!",
        package: {
          type: "CondaPackage!",
          resolve(source, args, context, info) {
            return context.nodeModel.getNodeById({
              id: source.package,
              type: "CondaPackage",
            })
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
        succeeded: {
          type: "Boolean!",
          resolve(source, args, context, info) {
            return source.fields.succeeded || false
          },
        },
        path: "String!",
        version: {
          type: "CondaVersion!",
          resolve(source, args, context, info) {
            return context.nodeModel.getNodeById({
              id: source.package,
              type: "CondaVersion",
            })
          },
        },
        publicURL: "String!",
      },
      interfaces: ["Node"],
    }),
  ])
}

async function createNodes(helpers) {
  const {
    graphql,
    actions,
    getNode,
    createContentDigest,
    loadNodeContent,
    createNodeId,
  } = helpers
  const {
    createNode,
    createNodeField,
    createPage,
    createParentChildLink,
  } = actions

  // Only select files 3 levels deep, from the git repos
  const result = await graphql(`
    {
      allFile(
        filter: {
          relativePath: { regex: "/.*/.*/.*/" }
          sourceInstanceName: { in: ["Wrappers", "Definitions"] }
        }
      ) {
        edges {
          node {
            id
            relativePath
            extension
            publicURL
            absolutePath
            internal {
              content
              owner
            }
          }
        }
      }
    }
  `)

  await Promise.all(
    result.data.allFile.edges.map(async ({ node }) => {
      // The root is the package name, e.g. "bwa". Create it if it doesn't exist
      const [packageName, versionName, filename] = node.relativePath.split(
        path.sep
      )
      const [stem, extension] = filename.split(".")
      const packageId = createNodeId(packageName)
      const packageUrl = `/packages/${packageName}`

      // Fetch the package node if it exists, otherwise create it
      let pack = getNode(packageId)
      if (!pack) {
        pack = {
          id: packageId,
          name: packageName,
          publicURL: packageUrl,
          // versions: [],
          internal: {
            type: "CondaPackage",
            contentDigest: createContentDigest(packageName),
          },
        }
        await createNode(pack)
      }

      // Fetch the version node if it exists, otherwise create it
      const versionId = createNodeId(`${packageName}/${versionName}`)
      const versionUrl = `/packages/${packageName}/${versionName}`
      let version = getNode(versionId)
      if (!version) {
        version = {
          id: versionId,
          publicURL: versionUrl,
          name: versionName,
          package: packageId,
          // executables: [],
          internal: {
            type: "CondaVersion",
            contentDigest: createContentDigest(versionId),
          },
        }
        await createNode(version)
      }
      createNodeField({
        node: pack,
        name: "versions",
        value: (pack.versions || []).concat([versionId]),
      })

      // Now create the node for the single file within that package
      const exeUrl = `${versionUrl}/${stem}`
      const exeId = createNodeId(exeUrl)
      let createdExe = false
      let exe = getNode(exeId)
      if (!exe) {
        exe = {
          id: exeId,
          name: stem,
          path: node.relativePath.split(".")[0],
          publicURL: exeUrl,
          version: versionId,
          // wrappers: [],
          internal: {
            type: "CondaExecutable",
            contentDigest: node.relativePath,
          },
        }
        await createNode(exe)
      }
      createNodeField({
        node: version,
        name: "executables",
        value: (version.executables || []).concat([exeId]),
      })

      // If we have the base YAML file, we can parse it to obtain more useful
      // metadata
      if (extension === "yml") {
        const contents = await loadNodeContent(node)
        const parsed = yaml.safeLoad(contents, { schema: schema })
        const success =
          parsed.positional.length +
            parsed.named.length +
            parsed.subcommands.length >
          0
        createNodeField({ node: exe, name: "succeeded", value: success })
      }

      // Link the executable to the wrapper
      const wrappers = exe.wrappers.concat([node.id])
      createNodeField({ node: exe, name: "wrappers", value: wrappers })
    })
  )
}

async function calculateSuccess(helpers) {
  const { graphql, actions } = helpers
  const { createNodeField } = actions

  // Only select files 3 levels deep, from the git repos
  const result = await graphql(`
    {
      allCondaPackage {
        nodes {
          id
          internal {
            owner
          }
          children {
            ... on CondaVersion {
              id
              name
              internal {
                owner
              }
              children {
                ... on CondaExecutable {
                  id
                  name
                  succeeded
                }
              }
            }
          }
        }
      }
    }
  `)

  result.data.allCondaPackage.nodes.forEach(package => {
    let packageSucceeded = 0
    let packageTotal = 0

    package.children.forEach(version => {
      // Calculate the successes for each version in the package
      let versionSucceeded = version.children.reduce(
        (acc, curr) => acc + (curr.succeeded ? 1 : 0),
        0
      )
      let versionTotal = version.children.length
      // Store this data on the node
      createNodeField({
        node: version,
        name: "succeededExeCount",
        value: versionSucceeded,
      })
      createNodeField({
        node: version,
        name: "allExeCount",
        value: versionTotal,
      })
      // Keep a count for the parent package
      packageSucceeded += versionSucceeded
      packageTotal += versionTotal
    })
    // Store this data on the node
    createNodeField({
      node: package,
      name: "succeededExeCount",
      value: packageSucceeded,
    })
    createNodeField({ node: package, name: "allExeCount", value: packageTotal })
  })
}

async function createPages(helpers) {
  const { graphql, actions } = helpers
  const { createPage } = actions
  const packages = await graphql(`
    {
      allCondaPackage {
        nodes {
          id
          publicURL
          children {
            ... on CondaVersion {
              id
              publicURL
              children {
                ... on CondaExecutable {
                  id
                  publicURL
                }
              }
            }
          }
        }
      }
    }
  `)
  await Promise.all(
    packages.data.allCondaPackage.nodes.map(async package => {
      await createPage({
        component: path.resolve(`./src/templates/package.js`),
        path: package.publicURL,
        context: {
          package: package.id,
        },
      })

      await package.children.map(async version => {
        await createPage({
          component: path.resolve(`./src/templates/version.js`),
          path: version.publicURL,
          context: {
            version: version.id,
          },
        })
        await version.children.map(async exe => {
          await createPage({
            component: path.resolve(`./src/templates/executable.js`),
            path: exe.publicURL,
            context: {
              exe: exe.id,
            },
          })
        })
      })
    })
  )
}

exports.createPages = async helpers => {
  await createNodes(helpers)
  // await calculateSuccess(helpers)
  await createPages(helpers)
}
