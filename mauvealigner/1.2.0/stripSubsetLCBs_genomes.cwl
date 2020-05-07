class: CommandLineTool
id: stripSubsetLCBs_genomes.cwl
inputs:
- id: input_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_bbc_ols
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: min
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: lcb
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: size
  doc: ''
  type: long
  inputBinding:
    position: 5
- id: min
  doc: ''
  type: long
  inputBinding:
    position: 6
- id: genomes
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: randomly
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: subsample
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: x
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: kb
  doc: ''
  type: string
  inputBinding:
    position: 12
outputs: []
cwlVersion: v1.1
baseCommand:
- stripSubsetLCBs
- genomes
