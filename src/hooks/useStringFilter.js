import React, { useState } from "react"

export default function useStringFilter() {
  const [search, setSearch] = useState("")
  const tokens = search.toLowerCase().split(" ")

  const inputProps = {
    value: search,
    onChange: e => setSearch(e.target.value),
  }

  const matches = str => {
    const lower = str.toLowerCase()
    return tokens.every(tok => lower.includes(tok))
  }
  return [inputProps, matches]
}
