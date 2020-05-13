class: CommandLineTool
id: nebulizer_update_tool_TOOLSHED.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: galaxy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: toolshed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: owner
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: repository
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- update_tool
- TOOLSHED
