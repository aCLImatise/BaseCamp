class: CommandLineTool
id: ../../../nw_ed.cwl
inputs:
- id: in_h_nro
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hnro
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_ed
