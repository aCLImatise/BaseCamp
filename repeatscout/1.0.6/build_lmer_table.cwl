class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/build_lmer_table.cwl
inputs:
- id: tandem
  doc: '--- tandem distance window (def: 500)'
  type: string
  inputBinding:
    prefix: -tandem
- id: min
  doc: '<#> --- smallest number of required lmers (def: 3)'
  type: boolean
  inputBinding:
    prefix: -min
- id: __output
  doc: '--- output a small amount of debugging information.'
  type: boolean
  inputBinding:
    prefix: -v
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: sequence
  doc: ''
  type: string
  inputBinding:
    prefix: -sequence
- id: freq
  doc: ''
  type: string
  inputBinding:
    prefix: -freq
- id: opts
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- build_lmer_table
