class: CommandLineTool
id: ../../../pfw.cwl
inputs:
- id: input_sequences_msa
  doc: ': input sequences in MSA format.'
  type: boolean
  inputBinding:
    prefix: -m
- id: value_number_shuffles
  doc: '<value>: number of shuffles per sequence (default: 100).'
  type: boolean
  inputBinding:
    prefix: -N
- id: value_gap_excision
  doc: '<value>: gap excision threshold (default: 0.5).'
  type: boolean
  inputBinding:
    prefix: -X
- id: value_random_number
  doc: '<value>: random number seed, negative integer (default: -123456789).'
  type: boolean
  inputBinding:
    prefix: -R
- id: value_total_weight
  doc: '<value>: total weight (default: 1).'
  type: boolean
  inputBinding:
    prefix: -W
- id: hmn_x_rw
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hmNXRW
outputs: []
cwlVersion: v1.1
baseCommand:
- pfw
