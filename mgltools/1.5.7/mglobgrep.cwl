#!/usr/bin/env cwl-runner

baseCommand:
- mglobgrep
class: CommandLineTool
cwlVersion: v1.0
id: mglobgrep
inputs:
- doc: Invert the matching, print non-matching molecules
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Print the number of matched molecules
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: Specify the input and output format
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: Full match, print matching-molecules when the number of heavy atoms is equal
    to the number of PATTERN atoms
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Only print the name of the molecules
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: Print a molecule only if the PATTERN occurs NUM times inside the molecule
  id: t
  inputBinding:
    prefix: -t
  type: string
