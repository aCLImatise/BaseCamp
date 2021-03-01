class: CommandLineTool
id: xsd.cwl
inputs:
- id: in_help
  doc: "Print usage information and exit. Use\n'help <cmd>' for command-specific options."
  type: string
  inputBinding:
    position: 0
- id: in_version
  doc: Print version and exit.
  type: string
  inputBinding:
    position: 1
- id: in_cxx_tree
  doc: Generate the C++/Tree mapping.
  type: string
  inputBinding:
    position: 2
- id: in_cxx_parser
  doc: Generate the C++/Parser mapping.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- xsd
