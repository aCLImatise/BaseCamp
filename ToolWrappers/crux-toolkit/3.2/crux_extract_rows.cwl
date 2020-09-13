class: CommandLineTool
id: ../../../crux_extract_rows.cwl
inputs:
- id: in_tsv_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_column_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- extract-rows
