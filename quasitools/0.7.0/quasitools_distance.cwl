class: CommandLineTool
id: quasitools_distance.cwl
inputs:
- id: normalize
  doc: / -dn, --dont_normalize Normalize read count data so that the read counts per
    4-tuple (A, C, T, G) sum to one.
  type: boolean
  inputBinding:
    prefix: --normalize
- id: output_distance
  doc: / -os, --output_similarity Output an angular distance matrix (by default),
    or output a cosine similarity matrix (cosine similarity is not a metric)
  type: boolean
  inputBinding:
    prefix: --output_distance
- id: startpos
  doc: Set the start base position of the reference to use in the distance or similarity
    calculation. Start position is one-indexed. I.e. it must be between one and the
    total length of the reference sequence(s), inclusive.
  type: long
  inputBinding:
    prefix: --startpos
- id: endpos
  doc: Set the end base position of the reference to use in the distance or similarity
    calculation. End position is one-indexed. I.e. it must be between one and the
    total length of the reference sequence(s), inclusive.
  type: long
  inputBinding:
    prefix: --endpos
- id: output
  doc: Output the quasispecies distance or similarity matrix in CSV format in a file.
  type: File
  inputBinding:
    prefix: --output
- id: truncate
  doc: Ignore contiguous start and end pileup regions with no coverage.
  type: boolean
  inputBinding:
    prefix: --truncate
- id: remove_no_coverage
  doc: Ignore all pileup regions with no coverage.
  type: boolean
  inputBinding:
    prefix: --remove_no_coverage
- id: keep_no_coverage
  doc: Do not ignore pileup regions with no coverage.
  type: boolean
  inputBinding:
    prefix: --keep_no_coverage
outputs: []
cwlVersion: v1.1
baseCommand:
- quasitools
- distance
