import React from "react"
import { graphql, withPrefix } from "gatsby"
import Container from "react-bulma-components/lib/components/container"
import Section from "react-bulma-components/lib/components/section"
import Table from "react-bulma-components/lib/components/table"
import Heading from "react-bulma-components/lib/components/heading"
import List from "react-bulma-components/lib/components/list"
import Breadcrumb from "react-bulma-components/lib/components/breadcrumb"
import Tag from "react-bulma-components/lib/components/tag"
import Layout from "../components/layout"
import SEO from "../components/seo"

export const query = graphql`
  query version($version: String) {
    condaVersion(id: { eq: $version }) {
      name
      package {
        name
        publicURL
      }
      executables {
        id
        name
        succeeded
        publicURL
      }
    }
  }
`

export default function Version({ data }) {
  const version = data.condaVersion
  const title = `${version.parent.name} ${version.name}`
  const pack = version.parent
  return (
    <Layout>
      <SEO title={title} />
      <Section>
        <Container>
          <Breadcrumb
            hrefAttr="href"
            items={[
              {
                name: pack.name,
                url: withPrefix(pack.publicURL),
              },
              {
                name: version.name,
                url: withPrefix(version.publicURL),
              },
            ]}
          />
          <Heading level={2}>{title}</Heading>
          <Heading level={3}>Executables</Heading>
          <List>
            {version.children.map(child => {
              return (
                <List.Item renderAs={"a"} href={withPrefix(child.publicURL)}>
                  {child.name}
                  &nbsp;
                  {child.succeeded ? (
                    <Tag color="success">Succeeded</Tag>
                  ) : (
                    <Tag color="danger">Failed</Tag>
                  )}
                </List.Item>
              )
            })}
          </List>
        </Container>
      </Section>
    </Layout>
  )
}
