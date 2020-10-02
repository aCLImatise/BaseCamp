class: CommandLineTool
id: jscan.cwl
inputs:
- id: in_amino_acid_similarity
  doc: //amino acid similarity matrix
  type: File
  inputBinding:
    prefix: -w
- id: in_i
  doc: //must be smaller or equal to zero
  type: string
  inputBinding:
    prefix: -i
- id: in_e
  doc: //must be smaller or equal to zero
  type: string
  inputBinding:
    prefix: -e
- id: in_j
  doc: //must be smaller or equal to zero
  type: string
  inputBinding:
    prefix: -j
- id: in_print_best_l
  doc: //print best l scores
  type: string
  inputBinding:
    prefix: -l
- id: in_run_verbose_mode
  doc: //run in verbose mode
  type: boolean
  inputBinding:
    prefix: -o
- id: in_print_version
  doc: //print version
  type: boolean
  inputBinding:
    prefix: -v
- id: in_sequence_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alignment_db_dot_prodom
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jscan
