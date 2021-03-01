class: CommandLineTool
id: hca_mtx_to_10x.cwl
inputs:
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca-mtx-to-10x
