class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/crux_sort_by_column.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- sort-by-column
