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
  const { createNode, createPage, createParentChildLink } = actions
  const result = await graphql(`
        {
          allFile(filter: {sourceInstanceName: {in: ["Wrappers", "Definitions"]}}) {
            edges {
              node {
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
    }
    createParentChildLink({parent: pack, child: version});

    // Now create the node for the single file within that package
    const exeUrl = `${versionUrl}/${stem}`
    const exeId = createNodeId(stem);
    let exe = getNode(exeId);
    if (!exe) {
      exe = {
        id: exeId,
        name: stem,
        path: node.relativePath.split('.')[0],
        publicURL: exeUrl,
        parent: versionId,
        internal: {
          type: "CondaExecutable",
          contentDigest: node.relativePath
        }
      };
      await createNode(exe);
    }
    // Link the version to the executable
    createParentChildLink({parent: version, child: exe});

    // Link the executable to the wrapper
    createParentChildLink({parent: exe, child: node});

    // Create the package components
    await createPage({
      component: path.resolve(`./src/templates/package.js`),
      path: packageUrl,
      context: {
        package: packageId
      }
    });
    
    // Create the version components
    await createPage({
      component: path.resolve(`./src/templates/version.js`),
      path: versionUrl,
      context: {
        version: versionId
      }
    });
    
    // Create the exe components
    await createPage({
      component: path.resolve(`./src/templates/executable.js`),
      path: exeUrl,
      context: {
        exe: exeId
      }
    });
  }));
}
