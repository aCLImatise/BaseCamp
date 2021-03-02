class: CommandLineTool
id: make_crd_hg.cwl
inputs:
- id: in_make_crg_hg
  doc: 'usage: make_crd_hg <  trajectory_file '
  type: string
  inputBinding:
    position: 0
- id: in_unit
  doc: '10 Error on OPEN: make_crd.in'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- make_crd_hg
