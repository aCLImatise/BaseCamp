class: CommandLineTool
id: miniasm.cwl
inputs:
- id: in_paf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: r
  doc: prefilter clearly contained reads (2-pass required)
  type: boolean
  inputBinding:
    prefix: -R
- id: m
  doc: min match length [100]
  type: long
  inputBinding:
    prefix: -m
- id: i
  doc: min identity [0.05]
  type: double
  inputBinding:
    prefix: -i
- id: s
  doc: min span [2000]
  type: long
  inputBinding:
    prefix: -s
- id: c
  doc: min coverage [3]
  type: long
  inputBinding:
    prefix: -c
- id: o
  doc: min overlap [same as -s]
  type: long
  inputBinding:
    prefix: -o
- id: h
  doc: max over hang length [1000]
  type: long
  inputBinding:
    prefix: -h
- id: i
  doc: min end-to-end match ratio [0.8]
  type: double
  inputBinding:
    prefix: -I
- id: g
  doc: max gap differences between reads for trans-reduction [1000]
  type: long
  inputBinding:
    prefix: -g
- id: d
  doc: max distance for bubble popping [50000]
  type: long
  inputBinding:
    prefix: -d
- id: e
  doc: small unitig threshold [4]
  type: long
  inputBinding:
    prefix: -e
- id: f
  doc: read sequences []
  type: File
  inputBinding:
    prefix: -f
- id: n
  doc: rounds of short overlap removal [3]
  type: long
  inputBinding:
    prefix: -n
- id: r
  doc: max and min overlap drop ratio [0.7,0.5]
  type:
  - double
  inputBinding:
    prefix: -r
- id: f
  doc: aggressive overlap drop ratio in the end [0.8]
  type: double
  inputBinding:
    prefix: -F
- id: v
  doc: print version number
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- miniasm
