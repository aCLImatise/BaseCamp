import { withPrefix } from "gatsby"
import PropTypes from "prop-types"
import React from "react"
import Navbar from "react-bulma-components/lib/components/navbar"
import Heading from "react-bulma-components/lib/components/heading"
import Icon from "react-bulma-components/lib/components/icon"
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome"
import { faGithub } from "@fortawesome/free-brands-svg-icons"

const Header = ({ siteTitle }) => (
  <Navbar color="primary">
    <Navbar.Brand>
      <Navbar.Item renderAs="a" href={withPrefix("/")}>
        <Heading style={{ color: "white" }}>{siteTitle}</Heading>
      </Navbar.Item>
      <Navbar.Burger />
    </Navbar.Brand>
    <Navbar.Menu>
      <Navbar.Container>
        <Navbar.Item href={withPrefix("/packages")}>Packages</Navbar.Item>
        <Navbar.Item href="https://github.com/aCLImatise/BaseCamp">
          <Icon>
            <FontAwesomeIcon icon={faGithub} />
          </Icon>
          &nbsp; GitHub
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
