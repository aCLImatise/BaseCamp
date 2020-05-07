class: CommandLineTool
id: bgt_fmf.cwl
inputs:
- id: fmf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fmf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: condition
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: m
  doc: load the entire FMF into RAM
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: only output the row name (the 1st column)
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- bgt
- fmf
