class: CommandLineTool
id: crux_extract_columns_column names.cwl
inputs:
- id: tsv_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: column_names
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- extract-columns
- column names
