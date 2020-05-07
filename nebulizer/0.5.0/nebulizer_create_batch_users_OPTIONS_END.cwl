class: CommandLineTool
id: nebulizer_create_batch_users_OPTIONS_END.cwl
inputs:
- id: galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: template
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_batch_users
- OPTIONS
- END
