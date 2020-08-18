class: CommandLineTool
id: ../../../jscan.cwl
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
- id: print_best_l
  doc: //print best l scores
  type: string
  inputBinding:
    prefix: -l
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
- id: sequence_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment_db_dot_prodom
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- jscan
