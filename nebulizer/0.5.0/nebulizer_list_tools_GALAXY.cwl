class: CommandLineTool
id: nebulizer_list_tools_GALAXY.cwl
inputs:
- id: name
  doc: list only tools matching NAME. Can include glob-style wild- cards.
  type: string
  inputBinding:
    prefix: --name
- id: installed
  doc: only list tools that have been installed from a toolshed (default is to list
    all tools).
  type: boolean
  inputBinding:
    prefix: --installed
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- list_tools
- GALAXY
