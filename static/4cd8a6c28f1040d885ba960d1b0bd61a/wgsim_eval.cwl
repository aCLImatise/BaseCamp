class: CommandLineTool
id: wgsim_eval.pl_uniqcmp.cwl
inputs:
- id: in1sam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in2sam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: q
  doc: confident mapping if mapping quality above INT [20]
  type: long
  inputBinding:
    prefix: -q
- id: s
  doc: same mapping if the distance below INT [100]
  type: long
  inputBinding:
    prefix: -s
- id: b
  doc: penalty for a difference [4]
  type: long
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- wgsim_eval.pl
- uniqcmp
