class: CommandLineTool
id: crux_extract_rows_column name.cwl
inputs:
- id: tsv_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: column_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: column_value
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- extract-rows
- column name
