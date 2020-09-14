// Gatsby supports TypeScript natively!
import React from "react"
import SEO from "../components/seo"
import { useStaticQuery, withPrefix } from "gatsby"
import { graphql } from "gatsby"

import Layout from "../components/layout"
import List from "react-bulma-components/lib/components/list"
import Container from "react-bulma-components/lib/components/container"
import Heading from "react-bulma-components/lib/components/heading"
import Section from "react-bulma-components/lib/components/section"
import Tag from "react-bulma-components/lib/components/tag"

export default function SecondPage() {
  const data = useStaticQuery(graphql`
    query allPackages {
      allCondaPackage {
        nodes {
          publicURL
          name
          succeededProportion
        }
      }
    }
  `)

  return (
    <Layout>
      <Section>
        <SEO title={"Packages"} />
        <Container>
          <Heading size={2}>Packages</Heading>
          <List>
            {data.allCondaPackage.nodes.map(pack => {
              const tagColour =
                pack.succeededProportion > 0.7 ? "success" : "danger"
              return (
                <List.Item renderAs={"a"} href={withPrefix(pack.publicURL)}>
                  {pack.name}
                  <Tag color={tagColour} pull={"right"}>
                    {(pack.succeededProportion * 100).toFixed(2)}% Success
                  </Tag>
                </List.Item>
              )
            })}
          </List>
        </Container>
      </Section>
    </Layout>
  )
}
