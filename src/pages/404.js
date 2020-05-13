import React from "react"

import Layout from "../components/layout"
import SEO from "../components/seo"
import Container from "react-bulma-components/lib/components/container"
import Heading from "react-bulma-components/lib/components/heading"
import Section from "react-bulma-components/lib/components/section"
import Content from "react-bulma-components/lib/components/content"

const NotFoundPage = () => (
  <Layout>
    <Section>
      <Container>
        <Content>
          <SEO title="404: Not found" />
          <h1>NOT FOUND</h1>
          <p>You just hit a route that doesn&#39;t exist... the sadness.</p>
        </Content>
      </Container>
    </Section>
  </Layout>
)

export default NotFoundPage
