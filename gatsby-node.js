const path = require("path");

exports.createSchemaCustomization = ({ actions: {createTypes}, schema }) => {
  createTypes([
    schema.buildObjectType({
      name: "CondaPackage",
      fields: {
        name: "String!",
        publicURL: "String!",
      },
      interfaces: ["Node"],
    }),
    schema.buildObjectType({
      name: "CondaVersion",
      fields: {
        name: "String!",
        publicURL: "String!",
      },
      interfaces: ["Node"],
    }),
    schema.buildObjectType({
      name: "CondaExecutable",
      fields: {
        wrappers: {
          type: "[File]",
          resolve(source, args, context, info){
            return context.nodeModel.getNodesByIds({
              ids: source.wrappers,
              type: 'File'
            })
          }
        },
        name: "String!",
        path: "String!",
        publicURL: "String!",
      },
      interfaces: ["Node"],
    }),
  ])
}

// You can delete this file if you're not using it
exports.createPages = async ({ graphql, actions, getNode, createContentDigest, createNodeId}) => {
  const { createNode, createNodeField, createPage, createParentChildLink } = actions
  const result = await graphql(`
        {
          allFile(filter: {sourceInstanceName: {in: ["Wrappers", "Definitions"]}}) {
            edges {
              node {
                id
                relativePath
                extension
                publicURL
              }
            }
          }
        }
  `)

  await Promise.all(result.data.allFile.edges.map(async ({ node }) => {
    // The root is the package name, e.g. "bwa". Create it if it doesn't exist
    const [packageName, versionName, filename] = node.relativePath.split(path.sep)
    const [stem, extension] = filename.split('.')
    const packageId = createNodeId(packageName);
    const packageUrl = `/packages/${packageName}`;
    
    // Fetch the package node if it exists, otherwise create it
    let pack = getNode(packageId)
    if (!pack) {
      pack = {
        id: packageId,
        name: packageName,
        publicURL: packageUrl,
        internal: {
          type: "CondaPackage",
          contentDigest: createContentDigest(packageName)
        }
      }
      await createNode(pack);
      await createPage({
        component: path.resolve(`./src/templates/package.js`),
        path: packageUrl,
        context: {
          package: packageId
        }
      });
    }

    // Fetch the version node if it exists, otherwise create it
    const versionId = createNodeId(`${packageName}/${versionName}`);
    const versionUrl = `/packages/${packageName}/${versionName}`;
    let version = getNode(versionId);
    if (!version) {
      version = {
        id: versionId,
        publicURL: versionUrl,
        name: versionName,
        parent: packageId,
        internal: {
          type: "CondaVersion",
          contentDigest: createContentDigest(versionId)
        }
      }
      await createNode(version);
      await createPage({
        component: path.resolve(`./src/templates/version.js`),
        path: versionUrl,
        context: {
          version: versionId
        }
      });
    }
    createParentChildLink({parent: pack, child: version});

    // Now create the node for the single file within that package
    const exeUrl = `${versionUrl}/${stem}`
    const exeId = createNodeId(exeUrl);
    let createdExe = false;
    let exe = getNode(exeId);
    if (!exe) {
      exe = {
        id: exeId,
        name: stem,
        path: node.relativePath.split('.')[0],
        publicURL: exeUrl,
        parent: versionId,
        wrappers: [],
        internal: {
          type: "CondaExecutable",
          contentDigest: node.relativePath
        }
      };
      await createNode(exe);
      await createPage({
        component: path.resolve(`./src/templates/executable.js`),
        path: exeUrl,
        context: {
          exe: exeId
        }
      });
    }

    // Link the version to the executable
    createParentChildLink({parent: version, child: exe});

    // Link the executable to the wrapper
    const wrappers = exe.wrappers || [];
    wrappers.push(node.id)
    createNodeField({node: exe, name: 'wrappers', value: wrappers});
  }));
}
