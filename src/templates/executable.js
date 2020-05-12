import React from "react"
import { graphql } from "gatsby"
import Container from "react-bulma-components/lib/components/container"
import Section from "react-bulma-components/lib/components/section"
import Table from 'react-bulma-components/lib/components/table';
import Heading from 'react-bulma-components/lib/components/heading';
import List from "react-bulma-components/lib/components/list"

export const query = graphql`
    query executable($id: String) {
        condaExecutable(id: {eq: $id}) {
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
            children {
                ... on File {
                    id
                    relativePath
                    publicURL
                }
            }
        }
    }
`;

export default function Version({data}) {
  const version = data.condaVersion;
  return (
    <Section>
      <Container>
        <Heading level={2}>`${version.parent.name} ${version.name}`</Heading>
        <Heading level={3}>Executables</Heading>
        <List>
          {version.children.map(child => {
            return <List.Item renderAs={"a"} href={child.publicURL}>{child.name}</List.Item>
          })}
        </List>
      </Container>
    </Section>
  )
}