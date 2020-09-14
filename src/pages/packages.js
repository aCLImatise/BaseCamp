// Gatsby supports TypeScript natively!
import React, { useState } from "react"
import SEO from "../components/seo"
import { useStaticQuery, withPrefix } from "gatsby"
import { graphql } from "gatsby"

import Layout from "../components/layout"
import useStringFilter from "../hooks/useStringFilter"

import List from "react-bulma-components/lib/components/list"
import Container from "react-bulma-components/lib/components/container"
import Heading from "react-bulma-components/lib/components/heading"
import Section from "react-bulma-components/lib/components/section"
import Tag from "react-bulma-components/lib/components/tag"
import { Input } from "react-bulma-components/lib/components/form"

export default function Packages() {
  const [inputProps, matches] = useStringFilter()

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
          <Input placeholder="Search" {...inputProps} />
          <List>
            {data.allCondaPackage.nodes.map(pack => {
              const tagColour =
                pack.succeededProportion > 0.7 ? "success" : "danger"
              const lowerCasePackage = pack.name.toLowerCase()

              // Only render this package if it matches the search
              if (matches(pack.name)) {
                return (
                  <List.Item renderAs={"a"} href={withPrefix(pack.publicURL)}>
                    {pack.name}
                    <Tag color={tagColour} pull={"right"}>
                      {(pack.succeededProportion * 100).toFixed(2)}% Success
                    </Tag>
                  </List.Item>
                )
              }
            })}
          </List>
        </Container>
      </Section>
    </Layout>
  )
}
