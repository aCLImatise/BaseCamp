import React from "react"
import { graphql, withPrefix } from "gatsby"
import Container from "react-bulma-components/lib/components/container"
import Section from "react-bulma-components/lib/components/section"
import Table from "react-bulma-components/lib/components/table"
import Heading from "react-bulma-components/lib/components/heading"
import Box from "react-bulma-components/lib/components/box"
import List from "react-bulma-components/lib/components/list"
import Breadcrumb from "react-bulma-components/lib/components/breadcrumb"
import Layout from "../components/layout"
import SEO from "../components/seo"
import Tag from "react-bulma-components/lib/components/tag"

export const query = graphql`
  query package($package: String) {
    condaPackage(id: { eq: $package }) {
      versions {
        name
        publicURL
        succeededProportion
      }
      succeededProportion
      name
      publicURL
    }
  }
`

export default function Package({ path, location, pageResources, data }) {
  const pack = data.condaPackage
  const condaUrl = `https://anaconda.org/bioconda/${pack.name}`
  const tagColour = pack.succeededProportion > 0.7 ? "success" : "danger"
  return (
    <Layout>
      <SEO title={pack.name} />
      <Section>
        <Container>
          <Heading size={2}>
            {pack.name} Package{" "}
            <Tag color={tagColour} pull="right">
              {pack.succeededProportion * 100}% Success
            </Tag>{" "}
          </Heading>
          <Heading size={3}>Detail</Heading>
          <Table>
            <tr>
              <td>Conda URL</td>
              <td>
                <a href={condaUrl}>{condaUrl}</a>
              </td>
            </tr>
            <tr>
              <td>Versions in Database</td>
              <td>{pack.versions.length}</td>
            </tr>
          </Table>
          <Heading size={3}>Versions</Heading>
          <List>
            {pack.versions.map(child => {
              const tagColour =
                child.succeededProportion > 0.7 ? "success" : "danger"
              return (
                <List.Item renderAs={"a"} href={withPrefix(child.publicURL)}>
                  {child.name}
                  <Tag color={tagColour} pull={"right"}>
                    {child.succeededProportion * 100}% Success
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
