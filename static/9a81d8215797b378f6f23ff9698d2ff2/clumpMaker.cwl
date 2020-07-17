class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/clumpMaker.cwl
inputs:
- id: penalty_clump_start
  doc: penalty for clump start, default 50000
  type: string
  inputBinding:
    prefix: -c
- id: max_jump_consistent
  doc: max jump between consistent hits in a clump, default 200000
  type: string
  inputBinding:
    prefix: -j
- id: reference_assembly_first
  doc: the reference assembly is the first one.
  type: boolean
  inputBinding:
    prefix: '-1'
- id: reference_assembly_second
  doc: the reference assembly is the second one (default).
  type: boolean
  inputBinding:
    prefix: '-2'
- id: assume_input_sorted
  doc: assume the input is already sorted by the query IID, position. this will also
    make the output sorted by queryIID, queryPosition
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- clumpMaker
