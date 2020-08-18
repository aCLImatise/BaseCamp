class: CommandLineTool
id: ../../../cactus_filterSmallFastaSequences.py.cwl
inputs:
- id: prefix
  doc: only filter sequences with prefix in name
  type: string
  inputBinding:
    prefix: --prefix
- id: length
  doc: filter shorter than length [default=1000]
  type: long
  inputBinding:
    prefix: --length
- id: fast_a_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- cactus_filterSmallFastaSequences.py
