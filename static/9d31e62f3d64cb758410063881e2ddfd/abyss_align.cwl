class: CommandLineTool
id: abyss_align.cwl
inputs:
- id: fast_a
  doc: sequences in FASTA format
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: di_align_d
  doc: 'dialign debug level, default: 0'
  type: string
  inputBinding:
    prefix: --dialign-d
- id: di_align_m
  doc: 'score matrix, default: dna_matrix.scr'
  type: File
  inputBinding:
    prefix: --dialign-m
- id: di_align_p
  doc: 'diagonal length probability distribution default: dna_diag_prob_100_exp_550000'
  type: File
  inputBinding:
    prefix: --dialign-p
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-align
