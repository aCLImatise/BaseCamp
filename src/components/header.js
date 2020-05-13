import { Link } from "gatsby"
import PropTypes from "prop-types"
import React from "react"
import Navbar from 'react-bulma-components/lib/components/navbar';
import { Heading } from "react-bulma-components/src"

const Header = ({ siteTitle }) => (
  <Navbar>
    <Navbar.Brand>
      <Navbar.Item renderAs="a" href="#">
        <Heading>
          {siteTitle}
        </Heading>
      </Navbar.Item>
      <Navbar.Burger />
    </Navbar.Brand>
    <Navbar.Menu >
      <Navbar.Container>
        <Navbar.Item href="/packages">
          Packages
        </Navbar.Item>
      </Navbar.Container>
      {/*<Navbar.Container position="end">*/}
      {/*  <Navbar.Item href="#">*/}
      {/*    At the end*/}
      {/*  </Navbar.Item>*/}
      {/*</Navbar.Container>*/}
    </Navbar.Menu>
  </Navbar>
)

Header.propTypes = {
  siteTitle: PropTypes.string,
}

Header.defaultProps = {
  siteTitle: ``,
}

export default Header
