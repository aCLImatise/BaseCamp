class: CommandLineTool
id: ../../../crux_sort_by_column.cwl
inputs:
- id: in_tsv_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- sort-by-column
