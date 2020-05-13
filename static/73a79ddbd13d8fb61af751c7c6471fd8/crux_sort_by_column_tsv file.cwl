class: CommandLineTool
id: crux_sort_by_column_tsv file.cwl
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
- sort-by-column
- tsv file
