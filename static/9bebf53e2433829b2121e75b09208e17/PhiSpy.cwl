class: CommandLineTool
id: ../../../PhiSpy.py_infile.cwl
inputs:
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: l
  doc: ''
  type: boolean
  inputBinding:
    prefix: -l
- id: phi_spy_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- PhiSpy.py
- infile
