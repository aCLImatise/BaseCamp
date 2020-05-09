module.exports = {
  siteMetadata: {
    title: `Gatsby Default Starter`,
    description: `Kick off your next, great Gatsby project with this default starter. This barebones starter ships with the main Gatsby configuration files you might need.`,
    author: `@gatsbyjs`,
  },
  plugins: [
    `gatsby-plugin-sass`,
    `gatsby-plugin-react-helmet`,
    {
      resolve: `gatsby-source-filesystem`,
      options: {
        name: `images`,
        path: `${__dirname}/src/images`,
      },
    },
    `gatsby-transformer-sharp`,
    `gatsby-plugin-sharp`,
    {
      resolve: `gatsby-plugin-manifest`,
      options: {
        name: `gatsby-starter-default`,
        short_name: `starter`,
        start_url: `/`,
        background_color: `#663399`,
        theme_color: `#663399`,
        display: `minimal-ui`,
        icon: `src/images/gatsby-icon.png`, // This path is relative to the root of the site.
      },
    },
    {
      resolve: `gatsby-source-git`,
      options: {
        name: `Definitions`,
        branch: 'master',
        remote: `git@github.com:aCLImatise/ToolDefinitions.git`,
        patterns: 'bwa/**',
        local: `${__dirname}/ToolDefinitions`
      }
    },
    {
      resolve: `gatsby-source-git`,
      options: {
        name: `Wrappers`,
        branch: 'master',
        remote: `git@github.com:aCLImatise/ToolWrappers.git`,
        patterns: 'bwa/**',
        local: `${__dirname}/ToolWrappers`
      }
    },
    // this (optional) plugin enables Progressive Web App + Offline functionality
    // To learn more, visit: https://gatsby.dev/offline
    // `gatsby-plugin-offline`,
  ],
}
