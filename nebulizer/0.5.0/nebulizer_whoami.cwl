class: CommandLineTool
id: nebulizer_whoami.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- whoami
