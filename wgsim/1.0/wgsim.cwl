class: CommandLineTool
id: wgsim.cwl
inputs:
- id: in_reff_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_read_1fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_read_2fq
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: r
  doc: rate of mutations [0.0010]
  type: double
  inputBinding:
    prefix: -r
- id: r
  doc: fraction of indels [0.15]
  type: double
  inputBinding:
    prefix: -R
- id: x
  doc: probability an indel is extended [0.30]
  type: double
  inputBinding:
    prefix: -X
- id: s
  doc: seed for random generator [-1]
  type: long
  inputBinding:
    prefix: -S
- id: a
  doc: disgard if the fraction of ambiguous bases higher than FLOAT [0.05]
  type: double
  inputBinding:
    prefix: -A
outputs: []
cwlVersion: v1.1
baseCommand:
- wgsim
