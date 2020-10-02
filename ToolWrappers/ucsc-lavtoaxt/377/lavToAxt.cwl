class: CommandLineTool
id: lavToAxt.cwl
inputs:
- id: in_fa
  doc: qNibDir is interpreted as a fasta file of multiple dna seq instead of directory
    of nibs
  type: boolean
  inputBinding:
    prefix: -fa
- id: in_tfa
  doc: is interpreted as a fasta file of multiple dna seq instead of directory of
    nibs
  type: File
  inputBinding:
    prefix: -tfa
- id: in_drop_self
  doc: drops alignment blocks on the diagonal for self alignments
  type: boolean
  inputBinding:
    prefix: -dropSelf
- id: in_score_scheme
  doc: "Read the scoring matrix from a blastz-format file.\n(only used in conjunction\
    \ with -dropSelf, to rescore\nalignments when blocks are dropped)\n"
  type: File
  inputBinding:
    prefix: -scoreScheme
- id: in_in_dot_lav
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_t_nib_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_q_nib_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lavToAxt
