class: CommandLineTool
id: make_crd_hg.cwl
inputs:
- id: in_unit
  doc: '10 Error on OPEN: make_crd.in'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- make_crd_hg
