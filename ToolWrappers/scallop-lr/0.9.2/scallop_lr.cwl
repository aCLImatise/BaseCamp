class: CommandLineTool
id: scallop_lr.cwl
inputs:
- id: in_verbose
  doc: '<0, 1, 2>                         0: quiet; 1: one line for each graph; 2:
    with details, default: 1'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_library_type
  doc: '<first, second, unstranded>  library type of the sample, default: unstranded'
  type: boolean?
  inputBinding:
    prefix: --library_type
- id: in_min_transcript_coverage
  doc: 'minimum coverage required for a multi-exon transcript, default: 1.01'
  type: double?
  inputBinding:
    prefix: --min_transcript_coverage
- id: in_min_single_exon_coverage
  doc: 'minimum coverage required for a single-exon transcript, default: 10'
  type: double?
  inputBinding:
    prefix: --min_single_exon_coverage
- id: in_min_transcript_length_increase
  doc: 'default: 50'
  type: long?
  inputBinding:
    prefix: --min_transcript_length_increase
- id: in_min_mapping_quality
  doc: 'ignore reads with mapping quality less than this value, default: 1'
  type: long?
  inputBinding:
    prefix: --min_mapping_quality
- id: in_min_bundle_gap
  doc: 'minimum distances required to start a new bundle, default: 50'
  type: long?
  inputBinding:
    prefix: --min_bundle_gap
- id: in_min_num_hits_in_bundle
  doc: 'minimum number of reads required in a bundle, default: 1'
  type: long?
  inputBinding:
    prefix: --min_num_hits_in_bundle
- id: in_min_splice_hits
  doc: 'minimum number of spliced reads required for a junction, default: 1'
  type: long?
  inputBinding:
    prefix: --min_splice_hits
- id: in_min_boundary_hits
  doc: "minimum number of reads with 5'/3' primes required for a boundary, default:\
    \ 3\n___           ___           ___                                       ___\
    \           ___\n/  /\\         /  /\\         /  /\\                        \
    \             /  /\\         /  /\\\n/  /:/_       /  /:/        /  /::\\    \
    \                               /  /::\\       /  /::\\\n/  /:/ /\\     /  /:/\
    \        /  /:/\\:\\    ___     ___   ___     ___    /  /:/\\:\\     /  /:/\\\
    :\\\n/  /:/ /::\\   /  /:/  ___   /  /:/~/::\\  /__/\\   /  /\\ /__/\\   /  /\\\
    \  /  /:/  \\:\\   /  /:/~/:/"
  type: long?
  inputBinding:
    prefix: --min_boundary_hits
- id: in_c
  doc: ''
  type: File?
  inputBinding:
    prefix: -c
- id: in_o
  doc: ''
  type: File?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scallop-lr
