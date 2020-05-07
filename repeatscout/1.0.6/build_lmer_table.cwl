class: CommandLineTool
id: build_lmer_table.cwl
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
- id: v
  doc: '--- output a small amount of debugging information.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- build_lmer_table
