class: CommandLineTool
id: vsnp_bruc_mlst.py.cwl
inputs:
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: r1
  doc: ''
  type: string
  inputBinding:
    prefix: -r1
- id: r2
  doc: ''
  type: string
  inputBinding:
    prefix: -r2
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_bruc_mlst.py
