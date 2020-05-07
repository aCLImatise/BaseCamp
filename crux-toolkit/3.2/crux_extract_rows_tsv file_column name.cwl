class: CommandLineTool
id: crux_extract_rows_tsv file_column name.cwl
inputs:
- id: column_value
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- extract-rows
- tsv file
- column name
