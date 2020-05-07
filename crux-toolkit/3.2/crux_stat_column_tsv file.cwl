class: CommandLineTool
id: crux_stat_column_tsv file.cwl
inputs:
- id: column_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- stat-column
- tsv file
