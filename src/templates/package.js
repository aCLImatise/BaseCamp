import React from "react"
import { graphql } from "gatsby"
import Container from "react-bulma-components/lib/components/container"
import Section from "react-bulma-components/lib/components/section"
import Table from 'react-bulma-components/lib/components/table';
import Heading from 'react-bulma-components/lib/components/heading';
import Box from 'react-bulma-components/lib/components/box';
import List from 'react-bulma-components/lib/components/list';

export const query = graphql`
    query package($package: String) {
        condaPackage(id: {eq: $package}) {
            children {
                ... on CondaVersion {
                    name
                    publicURL
                }
            }
            name
            publicURL
        }
    }
`;

export default function Package({path, location, pageResources, data}) {
  const pack = data.condaPackage;
  const condaUrl = `https://anaconda.org/bioconda/${pack.name}`;
  return (
    <Section>
      <Container>
        <Heading size={2}>{pack.name} Package</Heading>
        <Heading size={3}>Detail</Heading>
        <Table>
          <tr>
            <td>Conda URL</td>
            <td><a href={condaUrl}>{condaUrl}</a></td>
          </tr>
          <tr>
            <td>Versions in Database</td>
            <td>{pack.children.length}</td>
          </tr>
        </Table>
        <Heading size={3}>Versions</Heading>
        <List>
          {pack.children.map(child => {
            return <List.Item renderAs={"a"} href={child.publicURL}>{child.name}</List.Item>
          })}
        </List>
      </Container>
    </Section>
  )
}