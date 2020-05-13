class: CommandLineTool
id: xsd.cwl
inputs:
- id: help
  doc: Print usage information and exit. Use 'help <cmd>' for command-specific options.
  type: string
  inputBinding:
    position: 0
- id: version
  doc: Print version and exit.
  type: string
  inputBinding:
    position: 1
- id: cxx_tree
  doc: Generate the C++/Tree mapping.
  type: string
  inputBinding:
    position: 2
- id: cxx_parser
  doc: Generate the C++/Parser mapping.
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- xsd
