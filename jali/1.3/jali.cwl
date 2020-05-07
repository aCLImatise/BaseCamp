class: CommandLineTool
id: jali.cwl
inputs:
- id: sequence_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: w
  doc: //amino acid similarity matrix
  type: string
  inputBinding:
    prefix: -w
- id: i
  doc: //must be smaller or equal to zero
  type: string
  inputBinding:
    prefix: -i
- id: e
  doc: //must be smaller or equal to zero
  type: string
  inputBinding:
    prefix: -e
- id: j
  doc: //must be smaller or equal to zero
  type: string
  inputBinding:
    prefix: -j
- id: f
  doc: //0:ASCII (default) 1:HTML 2:double-spaced HTML
  type: string
  inputBinding:
    prefix: -f
- id: p
  doc: //print alignment
  type: boolean
  inputBinding:
    prefix: -p
- id: o
  doc: //run in verbose mode
  type: boolean
  inputBinding:
    prefix: -o
- id: v
  doc: //print version
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- jali
