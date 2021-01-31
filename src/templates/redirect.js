import React from "react"
import { Redirect, BrowserRouter } from "react-router-dom"

export default function Package(props) {
  return (
    <BrowserRouter>
      <Redirect to={props.pageContext.to} />
    </BrowserRouter>
  )
}
