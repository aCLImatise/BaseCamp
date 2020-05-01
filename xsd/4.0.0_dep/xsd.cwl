#!/usr/bin/env cwl-runner

baseCommand:
- xsd
class: CommandLineTool
cwlVersion: v1.0
id: xsd
inputs:
- doc: Print usage information and exit. Use 'help <cmd>' for command-specific options.
  id: help
  inputBinding:
    position: 0
  type: string
- doc: Print version and exit.
  id: version
  inputBinding:
    position: 1
  type: string
- doc: Generate the C++/Tree mapping.
  id: cxx_tree
  inputBinding:
    position: 2
  type: string
- doc: Generate the C++/Parser mapping.
  id: cxx_parser
  inputBinding:
    position: 3
  type: string
