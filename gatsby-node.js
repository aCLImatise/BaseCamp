// You can delete this file if you're not using it
exports.createPages = async ({ graphql, actions }) => {
    const { createPage } = actions;
    const result = await graphql(`
        {
          allFile(filter: {sourceInstanceName: {in: ["Wrappers", "Definitions"]}}) {
            edges {
              node {
                extension
                dir
                modifiedTime
              }
            }
          }
        }
  `);
    
    result.data.allFile.edges.forEach(({ node }) => {
        createPage({
            component: path.resolve(`./src/templates/package.js`),
            context: {
                data: node
            },
        })
    })
};