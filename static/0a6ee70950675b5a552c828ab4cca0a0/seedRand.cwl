class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seedRand.py_n.cwl
inputs:
- id: see_dr_and_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- seedRand.py
- n
