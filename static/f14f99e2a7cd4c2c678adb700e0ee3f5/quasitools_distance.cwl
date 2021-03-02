class: CommandLineTool
id: quasitools_distance.cwl
inputs:
- id: in_dont_normalize
  doc: "Normalize read count data so that the read\ncounts per 4-tuple (A, C, T, G)\
    \ sum to one."
  type: boolean?
  inputBinding:
    prefix: --dont_normalize
- id: in_output_similarity
  doc: "Output an angular distance matrix (by\ndefault), or output a cosine similarity\n\
    matrix (cosine similarity is not a metric)"
  type: boolean?
  inputBinding:
    prefix: --output_similarity
- id: in_startpos
  doc: "Set the start base position of the reference\nto use in the distance or similarity\n\
    calculation. Start position is one-indexed.\nI.e. it must be between one and the\
    \ total\nlength of the reference sequence(s),\ninclusive."
  type: long?
  inputBinding:
    prefix: --startpos
- id: in_endpos
  doc: "Set the end base position of the reference\nto use in the distance or similarity\n\
    calculation. End position is one-indexed.\nI.e. it must be between one and the\
    \ total\nlength of the reference sequence(s),\ninclusive."
  type: long?
  inputBinding:
    prefix: --endpos
- id: in_output
  doc: "Output the quasispecies distance or\nsimilarity matrix in CSV format in a\
    \ file."
  type: File?
  inputBinding:
    prefix: --output
- id: in_truncate
  doc: "Ignore contiguous start and end pileup\nregions with no coverage."
  type: boolean?
  inputBinding:
    prefix: --truncate
- id: in_remove_no_coverage
  doc: Ignore all pileup regions with no coverage.
  type: boolean?
  inputBinding:
    prefix: --remove_no_coverage
- id: in_keep_no_coverage
  doc: Do not ignore pileup regions with no
  type: boolean?
  inputBinding:
    prefix: --keep_no_coverage
- id: in_pile_up_dot
  doc: Normalization is done dividing base read counts (A, C, T, G) inside every
  type: string
  inputBinding:
    position: 0
- id: in_coverage_dot
  doc: --help                          Show this message and exit.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output the quasispecies distance or\nsimilarity matrix in CSV format in a\
    \ file."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- quasitools
- distance
