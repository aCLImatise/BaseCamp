class: CommandLineTool
id: ribo_score.cwl
inputs:
- id: in_output
  doc: directory in which to place the output files
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_flanking_length
  doc: 'length of flanking regions, in bp; default: 1000'
  type: long?
  inputBinding:
    prefix: --flanking_length
- id: in_min_percent
  doc: minimum percent identity
  type: long?
  inputBinding:
    prefix: --min_percent
- id: in_assembly_ext
  doc: extenssion of reference, usually fasta
  type: string?
  inputBinding:
    prefix: --assembly_ext
- id: in_ref_ext
  doc: extension of reference, usually .gb
  type: string?
  inputBinding:
    prefix: --ref_ext
- id: in_blast_full
  doc: "if true, blast full sequences along with just the\nflanking. Interpretation\
    \ is not implemented currently\nas false positives cant be detected this way"
  type: boolean?
  inputBinding:
    prefix: --blast_Full
- id: in_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2\n"
  type: File?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: directory in which to place the output files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_verbosity
  doc: "Logger writes debug to file in output dir; this sets\nverbosity level sent\
    \ to stderr. 1 = debug(), 2 =\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\n\
    default: 2\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_verbosity)
hints: []
cwlVersion: v1.1
baseCommand:
- ribo
- score
