class: CommandLineTool
id: ../../../orthomclDropSchema.cwl
inputs:
- id: in_config_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sql_log_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- orthomclDropSchema
