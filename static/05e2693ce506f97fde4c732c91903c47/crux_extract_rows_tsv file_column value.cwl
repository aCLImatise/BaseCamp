class: CommandLineTool
id: crux_extract_rows_tsv file_column value.cwl
inputs:
- id: column_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: column_value
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- extract-rows
- tsv file
- column value
