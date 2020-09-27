class: CommandLineTool
id: nebulizer_list_tool_panel.cwl
inputs:
- id: in_name
  doc: "only list tool panel sections where name or id match NAME. Can\ninclude glob-style\
    \ wild-cards."
  type: string
  inputBinding:
    prefix: --name
- id: in_list_tools
  doc: also list the associated tools for each section
  type: boolean
  inputBinding:
    prefix: --list-tools
- id: in_galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- list_tool_panel
