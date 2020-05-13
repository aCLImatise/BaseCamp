class: CommandLineTool
id: nebulizer_list_tool_panel_OPTIONS.cwl
inputs:
- id: name
  doc: only list tool panel sections where name or id match NAME. Can include glob-style
    wild-cards.
  type: string
  inputBinding:
    prefix: --name
- id: list_tools
  doc: also list the associated tools for each section
  type: boolean
  inputBinding:
    prefix: --list-tools
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- list_tool_panel
- OPTIONS
