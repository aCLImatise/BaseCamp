class: CommandLineTool
id: disty.cwl
inputs:
- id: in_float_skip_columns
  doc: FLOAT  skip columns having frequency of N > FLOAT [1.00]
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_int_input_format
  doc: "INT    input format [0]\n0: ACGT\n1: 01"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_int_strategy_deal
  doc: "INT    strategy to deal with N's [0]\n0: ignore pairwisely\n1: ignore pairwisely\
    \ and normalize\n2: ignore globally\n3: replace by the major allele\n4: replace\
    \ by the closest individual (not implemented yet)"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_print_version_exit
  doc: print version and exit
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_alignment_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- disty
