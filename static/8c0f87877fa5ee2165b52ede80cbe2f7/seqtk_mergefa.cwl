class: CommandLineTool
id: seqtk_mergefa.cwl
inputs:
- id: in1fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in2fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: q
  doc: quality threshold [0]
  type: long
  inputBinding:
    prefix: -q
- id: i
  doc: take intersection
  type: boolean
  inputBinding:
    prefix: -i
- id: m
  doc: convert to lowercase when one of the input base is N
  type: boolean
  inputBinding:
    prefix: -m
- id: r
  doc: pick a random allele from het
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- mergefa
