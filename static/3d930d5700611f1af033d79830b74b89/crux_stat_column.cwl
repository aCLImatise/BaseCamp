class: CommandLineTool
id: crux_stat_column.cwl
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
hints: []
cwlVersion: v1.1
baseCommand:
- crux
- stat-column
