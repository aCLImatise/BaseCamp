class: CommandLineTool
id: proteinortho_ffadj_mcs.py.cwl
inputs:
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -M
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -R
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- proteinortho_ffadj_mcs.py
