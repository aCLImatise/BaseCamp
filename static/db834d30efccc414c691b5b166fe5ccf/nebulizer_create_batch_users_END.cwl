class: CommandLineTool
id: nebulizer_create_batch_users_END.cwl
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
- id: template
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_batch_users
- END
