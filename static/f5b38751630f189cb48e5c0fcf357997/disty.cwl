class: CommandLineTool
id: ../../../disty.cwl
inputs:
- id: float_skip_columns
  doc: FLOAT  skip columns having frequency of N > FLOAT [1.00]
  type: boolean
  inputBinding:
    prefix: -n
- id: int_input_format
  doc: 'INT    input format [0] 0: ACGT 1: 01'
  type: boolean
  inputBinding:
    prefix: -i
- id: int_strategy_ignore
  doc: "INT    strategy to deal with N's [0] 0: ignore pairwisely 1: ignore pairwisely\
    \ and normalize 2: ignore globally 3: replace by the major allele 4: replace by\
    \ the closest individual (not implemented yet)"
  type: boolean
  inputBinding:
    prefix: -s
- id: print_version_exit
  doc: print version and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: alignment_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- disty
