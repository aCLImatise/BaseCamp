class: CommandLineTool
id: stripSubsetLCBs_input xmfa_kb.cwl
inputs:
- id: input_bbc_ols
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: min
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: lcb
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: size
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: min
  doc: ''
  type: long
  inputBinding:
    position: 5
- id: genomes
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: randomly
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: subsample
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: x
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: kb
  doc: ''
  type: string
  inputBinding:
    position: 11
outputs: []
cwlVersion: v1.1
baseCommand:
- stripSubsetLCBs
- input xmfa
- kb
