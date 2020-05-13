// Gatsby supports TypeScript natively!
import React from "react"
import { PageProps, Link, useStaticQuery } from "gatsby"
import { graphql } from "gatsby"

import Layout from "../components/layout"
import List from "react-bulma-components/lib/components/list"
import Container from 'react-bulma-components/lib/components/container';
import Heading from 'react-bulma-components/lib/components/heading';
import Section from 'react-bulma-components/lib/components/section';

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
      <Section>
        <Container>
            <Heading size={2}>
                Packages
              </Heading>
              <List>
                {data.allCondaPackage.nodes.map(pack => {
                  return <List.Item renderAs={'a'} href={pack.publicURL}>
                    {pack.name}
                  </List.Item>
                })}
              </List>
        </Container>
      </Section>
    </Layout>
  )
}
