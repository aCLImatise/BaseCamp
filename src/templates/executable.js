import React, { useState, useEffect } from "react"
import { graphql, withPrefix, Link } from "gatsby"
import Container from "react-bulma-components/lib/components/container"
import Section from "react-bulma-components/lib/components/section"
import Table from "react-bulma-components/lib/components/table"
import Card from "react-bulma-components/lib/components/card"
import Heading from "react-bulma-components/lib/components/heading"
import axios from "axios"
import { dark } from "react-syntax-highlighter/dist/esm/styles/prism"
import { Prism as SyntaxHighlighter } from "react-syntax-highlighter"
import { Input } from "react-bulma-components/lib/components/form"
import Breadcrumb from "react-bulma-components/lib/components/breadcrumb"
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome"
import Icon from "react-bulma-components/lib/components/icon"
import {
  faDownload,
  faAngleDown,
  faAngleUp,
  faLink,
} from "@fortawesome/free-solid-svg-icons"

import Layout from "../components/layout"
import SEO from "../components/seo"

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

function useCollapse({ initial = false } = {}) {
  const [visible, setVisible] = useState(initial)
  const toggle = () => {
    setVisible(v => !v)
  }
  const props = visible
    ? {}
    : {
        display: "none",
      }

  return [toggle, props, visible]
}

const useAxios = config => {
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
    condaExecutable(id: { eq: $exe }) {
      name
      version {
        name
        publicURL
        package {
          name
          publicURL
        }
      }
      wrappers {
        id
        stableUrl
        file {
          relativePath
          publicURL
          extension
        }
      }
    }
  }
`

function Wrapper({ wrapper }) {
  const [collapseToggle, collapseStyle, collapseVisible] = useCollapse()
  const data = useAxios({
    url: wrapper.file.publicURL,
    method: "get",
    responseType: "text",
  })
  return (
    <Card
      style={{
        marginTop: "2em",
        marginBottom: "2em",
      }}
    >
      <Card.Header
        onClick={collapseToggle}
        style={{
          cursor: "pointer",
        }}
      >
        <Card.Header.Icon>
          <Icon>
            <FontAwesomeIcon icon={collapseVisible ? faAngleUp : faAngleDown} />
          </Icon>
        </Card.Header.Icon>
        <Card.Header.Title>{wrapper.file.extension}</Card.Header.Title>
        <Card.Header.Icon>
          <a
            title={"Copy stable link"}
            onClick={e => {
              navigator.clipboard.writeText(
                `${window.location.origin}${wrapper.stableUrl}`
              )
              e.stopPropagation()
            }}
          >
            <Icon>
              <FontAwesomeIcon icon={faLink} />
            </Icon>
          </a>
        </Card.Header.Icon>
        <Card.Header.Icon>
          <a
            title={"Download tool definition"}
            href={wrapper.file.publicURL}
            download
            onClick={e => {
              e.stopPropagation()
            }}
          >
            <Icon>
              <FontAwesomeIcon icon={faDownload} />
            </Icon>
          </a>
        </Card.Header.Icon>
      </Card.Header>
      <Card.Content style={collapseStyle}>
        <SyntaxHighlighter
          style={dark}
          language={chooseLanguage(wrapper.file.extension)}
        >
          {data}
        </SyntaxHighlighter>
      </Card.Content>
    </Card>
  )
}

export default function Executable({ data }) {
  const exe = data.condaExecutable
  const version = exe.version
  const pack = exe.version.package
  const title = `${pack.name} ${version.name} ${exe.name}`
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
              {
                name: exe.name,
                url: withPrefix(exe.publicURL),
                active: true,
              },
            ]}
          />
          <Heading level={2}>{title}</Heading>
          <Heading level={3}>Wrappers</Heading>
          {exe.wrappers.map(wrapper => {
            return <Wrapper wrapper={wrapper} />
          })}
        </Container>
      </Section>
    </Layout>
  )
}
