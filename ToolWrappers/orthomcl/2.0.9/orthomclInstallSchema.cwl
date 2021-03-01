class: CommandLineTool
id: orthomclInstallSchema.cwl
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
- id: in_table_suffix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- orthomclInstallSchema
