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
import { Input } from "react-bulma-components/lib/components/form"
import useStringFilter from "../hooks/useStringFilter"

export const query = graphql`
  query version($version: String) {
    condaVersion(id: { eq: $version }) {
      name
      succeededProportion
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
  const [inputProps, matches] = useStringFilter()
  const version = data.condaVersion
  const tagColour = version.succeededProportion > 0.7 ? "success" : "danger"

  const title = `${version.package.name} ${version.name}`
  const pack = version.package
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
          <Heading level={2}>
            {title}{" "}
            <Tag color={tagColour} pull="right">
              {(version.succeededProportion * 100).toFixed(2)}% Success
            </Tag>
          </Heading>
          <Heading level={3}>Executables</Heading>
          <Input placeholder="Search" {...inputProps} />
          <List>
            {version.executables.map(child => {
              if (!matches(child.name)) {
                return
              }
              return (
                <List.Item renderAs={"a"} href={withPrefix(child.publicURL)}>
                  {child.name}
                  &nbsp;
                  {child.succeeded ? (
                    <Tag color="success" pull="right">
                      Succeeded
                    </Tag>
                  ) : (
                    <Tag color="danger" pull="right">
                      Failed
                    </Tag>
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
