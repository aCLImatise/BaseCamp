class: CommandLineTool
id: build_lmer_table.cwl
inputs:
- id: in_tandem
  doc: '--- tandem distance window (def: 500)'
  type: long?
  inputBinding:
    prefix: -tandem
- id: in_min
  doc: '<#> --- smallest number of required lmers (def: 3)'
  type: boolean?
  inputBinding:
    prefix: -min
- id: in___output
  doc: '--- output a small amount of debugging information.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_freq
  doc: ''
  type: string?
  inputBinding:
    prefix: -freq
- id: in_sequence
  doc: ''
  type: string?
  inputBinding:
    prefix: -sequence
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_opts
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- build_lmer_table
