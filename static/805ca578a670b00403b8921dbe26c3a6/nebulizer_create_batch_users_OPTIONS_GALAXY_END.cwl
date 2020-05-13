class: CommandLineTool
id: nebulizer_create_batch_users_OPTIONS_GALAXY_END.cwl
inputs:
- id: template
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_batch_users
- OPTIONS
- GALAXY
- END
