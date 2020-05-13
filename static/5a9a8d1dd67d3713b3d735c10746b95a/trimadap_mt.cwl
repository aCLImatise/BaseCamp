class: CommandLineTool
id: trimadap_mt.cwl
inputs:
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: l
  doc: min length [8]
  type: long
  inputBinding:
    prefix: -l
- id: s
  doc: min score [15]
  type: long
  inputBinding:
    prefix: -s
- id: t
  doc: trim down [don't trim]
  type: long
  inputBinding:
    prefix: -t
- id: d
  doc: max difference [0.150]
  type: double
  inputBinding:
    prefix: -d
- id: p
  doc: number of trimmer threads [1]
  type: long
  inputBinding:
    prefix: -p
- id: v
  doc: print version number
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- trimadap-mt
