class: CommandLineTool
id: crux_extract_columns_tsv file.cwl
inputs:
- id: column_names
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- extract-columns
- tsv file
