class: CommandLineTool
id: nebulizer_remove_key.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alias
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- remove_key
