import React, { useState, useEffect } from "react"
import { graphql } from "gatsby"
import Container from "react-bulma-components/lib/components/container"
import Section from "react-bulma-components/lib/components/section"
import Table from "react-bulma-components/lib/components/table"
import Card from "react-bulma-components/lib/components/card"
import Heading from "react-bulma-components/lib/components/heading"
import List from "react-bulma-components/lib/components/list"
import axios from "axios"
import { dark } from "react-syntax-highlighter/dist/esm/styles/prism"
import { Prism as SyntaxHighlighter } from "react-syntax-highlighter"
import Breadcrumb from "react-bulma-components/lib/components/breadcrumb"

import Layout from "../components/layout"

/**
 * Choose a syntax highlighting language based on the file extension
 */
function chooseLanguage(extension) {
  switch (extension) {
    case "cwl":
      return "yml"
    case "wdl":
      return "text"
    default:
      return extension
  }
}

const useAxios = (config) => {
  const [data, updateData] = useState(undefined)

  // empty array as second argument equivalent to componentDidMount
  useEffect(() => {
    async function fetchData() {
      const response = await axios(config)
      updateData(response.data)
    }

    fetchData()
  }, [config])

  return data
}

export const query = graphql`
    query executable($exe: String) {
        condaExecutable(id: {eq: $exe}) {
            name
            parent {
                ...on CondaVersion {
                    name
                    publicURL
                    parent {
                        ...on CondaPackage {
                            name
                            publicURL
                        }
                    }
                }
            }
            wrappers {
                id
                relativePath
                publicURL
                extension
            }
        }
    }
`

function Wrapper({ file }) {
  const data = useAxios({ url: file.publicURL, method: "get", responseType: "text" })
  return (
    <Card>
      <Card.Content>
        <SyntaxHighlighter style={dark} language={chooseLanguage(file.extension)}>
          {data}
        </SyntaxHighlighter>
      </Card.Content>
    </Card>
  )
}

export default function Executable({ data }) {
  const exe = data.condaExecutable
  const version = exe.parent
  const pack = exe.parent.parent
  return (
    <Layout>
      <Section>
        <Container>
          <Breadcrumb
            hrefAttr="href"
            items={[
              {
                name: "Home",
                url: "/"
              },
              {
                name: pack.name,
                url: pack.publicURL
              }, {
                name: version.name,
                url: version.publicURL
              }, {
                name: exe.name,
                url: exe.publicURL,
                active: true
              }
            ]}
          />
          <Heading level={2}>{`${pack.name} ${version.name} ${exe.name}`}</Heading>
          <Heading level={3}>Wrappers</Heading>
          {exe.wrappers.map(wrapper => {
            return <Wrapper file={wrapper}/>
          })}
        </Container>
      </Section>
    </Layout>
  )
}
