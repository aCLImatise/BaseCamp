class: CommandLineTool
id: orthomclDropSchema.cwl
inputs:
- id: config_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sql_log_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclDropSchema
