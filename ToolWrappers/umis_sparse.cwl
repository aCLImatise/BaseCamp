class: CommandLineTool
id: umis_sparse.cwl
inputs:
- id: in_csv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sparse
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
- umis
- sparse
