class: CommandLineTool
id: OrientContigs.cwl
inputs:
- id: in_skip
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -skip
- id: in_repeats
  doc: ''
  type: File?
  inputBinding:
    prefix: -repeats
- id: in_redundancy
  doc: ''
  type: long?
  inputBinding:
    prefix: -redundancy
- id: in_agressive
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -agressive
- id: in_no_reduce
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -noreduce
- id: in_all
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -all
- id: in_b
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_an_k
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_bank_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- OrientContigs
