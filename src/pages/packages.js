// Gatsby supports TypeScript natively!
import React from "react"
import { PageProps, Link, useStaticQuery } from "gatsby"
import { graphql } from "gatsby"

import Layout from "../components/layout"
import { List } from "react-bulma-components/src"

export default function SecondPage() {
  const data = useStaticQuery(graphql`
    query allPackages {
        allCondaPackage {
            nodes {
                publicURL
                name
            }
        }
    }
  `);
  
  return (
    <Layout>
      <List>
        {data.allCondaPackage.nodes.map(pack => {
          return <List.Item renderAs={'a'} href={pack.publicURL}>
            {pack.name}
          </List.Item>
        })}
      </List>
    </Layout>
  )
}
