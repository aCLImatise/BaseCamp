class: CommandLineTool
id: kssd_shuffle.cwl
inputs:
- id: in_half_k_merle_n
  doc: "a half of the length of k-mer. For proyakat\ngenome, k = 8 is suggested; for\
    \ mammals, k = 10 or\n11 is suggested.[8]"
  type: long
  inputBinding:
    prefix: --halfKmerLen
- id: in_half_sub_strlen
  doc: a half of the length of k-mer substring. [5]
  type: long
  inputBinding:
    prefix: --halfSubstrLen
- id: in_level
  doc: "the level of dimensionality reduction, the\nexpectation dimensionality reduction\
    \ rate is 16^n\nif set -l = n. [2]"
  type: long
  inputBinding:
    prefix: --level
- id: in_outfile
  doc: "specify the output file name prefix, if not\nspecify default shuffle named\
    \ 'default.shuf\ngenerated'"
  type: File
  inputBinding:
    prefix: --outfile
- id: in_use_default
  doc: "All options use default value, which assuming\nprokaryote genomes, k=8, s=5,\
    \ and l=2."
  type: boolean
  inputBinding:
    prefix: --usedefault
- id: in_option_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "specify the output file name prefix, if not\nspecify default shuffle named\
    \ 'default.shuf\ngenerated'"
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- kssd
- shuffle
