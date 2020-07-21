class: CommandLineTool
id: ../../../proteinortho_ffadj_mcs.py.cwl
inputs:
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -R
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -M
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- proteinortho_ffadj_mcs.py
