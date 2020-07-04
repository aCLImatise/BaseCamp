class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/OrientContigs.cwl
inputs:
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
- id: all
  doc: ''
  type: boolean
  inputBinding:
    prefix: -all
- id: no_reduce
  doc: ''
  type: boolean
  inputBinding:
    prefix: -noreduce
- id: agressive
  doc: ''
  type: boolean
  inputBinding:
    prefix: -agressive
- id: redundancy
  doc: ''
  type: long
  inputBinding:
    prefix: -redundancy
- id: repeats
  doc: ''
  type: File
  inputBinding:
    prefix: -repeats
- id: skip
  doc: ''
  type: boolean
  inputBinding:
    prefix: -skip
- id: an_k
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- OrientContigs
