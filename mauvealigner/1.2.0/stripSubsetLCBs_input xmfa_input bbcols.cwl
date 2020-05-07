class: CommandLineTool
id: stripSubsetLCBs_input xmfa_input bbcols.cwl
inputs:
- id: output_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: min
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: lcb
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: size
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: min
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: genomes
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: randomly
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: subsample
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: x
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: kb
  doc: ''
  type: string
  inputBinding:
    position: 10
outputs: []
cwlVersion: v1.1
baseCommand:
- stripSubsetLCBs
- input xmfa
- input bbcols
