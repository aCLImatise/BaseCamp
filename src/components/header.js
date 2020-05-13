import { withPrefix } from "gatsby"
import PropTypes from "prop-types"
import React from "react"
import Navbar from 'react-bulma-components/lib/components/navbar';
import Heading from 'react-bulma-components/lib/components/heading';

const Header = ({ siteTitle }) => (
  <Navbar color="primary">
    <Navbar.Brand>
      <Navbar.Item renderAs="a" href={withPrefix("/")}>
        <Heading style={{color: "white"}}>
          {siteTitle}
        </Heading>
      </Navbar.Item>
      <Navbar.Burger />
    </Navbar.Brand>
    <Navbar.Menu >
      <Navbar.Container>
        <Navbar.Item href={withPrefix("/packages")}>
          Packages
        </Navbar.Item>
      </Navbar.Container>
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
