class: CommandLineTool
id: orthomclInstallSchema.cwl
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
- id: table_suffix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclInstallSchema
