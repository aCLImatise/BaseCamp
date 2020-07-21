class: CommandLineTool
id: ../../../jsearch.cwl
inputs:
- id: amino_acid_similarity
  doc: //amino acid similarity matrix
  type: string
  inputBinding:
    prefix: -w
- id: i
  doc: //must be smaller or equal to zero
  type: string
  inputBinding:
    prefix: -i
- id: e
  doc: //must be smaller or equal to zero
  type: string
  inputBinding:
    prefix: -e
- id: j
  doc: //must be smaller or equal to zero
  type: string
  inputBinding:
    prefix: -j
- id: run_verbose_mode
  doc: //run in verbose mode
  type: boolean
  inputBinding:
    prefix: -o
- id: print_version
  doc: //print version
  type: boolean
  inputBinding:
    prefix: -v
- id: sequence_db_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- jsearch
