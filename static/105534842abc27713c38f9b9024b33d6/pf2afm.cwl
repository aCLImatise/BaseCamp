class: CommandLineTool
id: pf2afm.cwl
inputs:
- id: in_d_no_display
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -dNODISPLAY
- id: in_gs
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pf2afm
