class: CommandLineTool
id: nebulizer_create_batch_users_OPTIONS_GALAXY_TEMPLATE_END.cwl
inputs:
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: end
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_batch_users
- OPTIONS
- GALAXY
- TEMPLATE
- END
