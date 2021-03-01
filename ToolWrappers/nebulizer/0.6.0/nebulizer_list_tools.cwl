class: CommandLineTool
id: nebulizer_list_tools.cwl
inputs:
- id: in_name
  doc: list only tools matching NAME. Can include glob-style wild-
  type: string?
  inputBinding:
    prefix: --name
- id: in_tool
  doc: name, version, tool panel section, and toolshed repository and revision
  type: string
  inputBinding:
    position: 0
- id: in_changeset_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 1
- id: in_cards_dot
  doc: --installed  only list tools that have been installed from a toolshed
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- list_tools
