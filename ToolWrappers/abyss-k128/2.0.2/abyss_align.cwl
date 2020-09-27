class: CommandLineTool
id: abyss_align.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_di_align_d
  doc: 'dialign debug level, default: 0'
  type: long
  inputBinding:
    prefix: --dialign-d
- id: in_di_align_m
  doc: 'score matrix, default: dna_matrix.scr'
  type: File
  inputBinding:
    prefix: --dialign-m
- id: in_di_align_p
  doc: "diagonal length probability distribution\ndefault: dna_diag_prob_100_exp_550000"
  type: File
  inputBinding:
    prefix: --dialign-p
- id: in_fast_a
  doc: sequences in FASTA format
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- abyss-align
