class: CommandLineTool
id: nebulizer_update_tool_OPTIONS_OWNER.cwl
inputs:
- id: galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: toolshed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: owner
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: repository
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- update_tool
- OPTIONS
- OWNER
