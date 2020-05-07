class: CommandLineTool
id: minidot.cwl
inputs:
- id: in_paf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: m
  doc: min match length [100]
  type: long
  inputBinding:
    prefix: -m
- id: i
  doc: min identity [0.10]
  type: double
  inputBinding:
    prefix: -i
- id: s
  doc: min span [1000]
  type: long
  inputBinding:
    prefix: -s
- id: w
  doc: image width [600]
  type: long
  inputBinding:
    prefix: -w
- id: f
  doc: font size [11]
  type: long
  inputBinding:
    prefix: -f
- id: l
  doc: don't print labels
  type: boolean
  inputBinding:
    prefix: -L
- id: d
  doc: don't try to put hits onto the diagonal
  type: boolean
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- minidot
