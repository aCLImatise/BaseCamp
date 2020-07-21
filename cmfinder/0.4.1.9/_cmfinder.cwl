class: CommandLineTool
id: ../../../_cmfinder.pl.cwl
inputs:
- id: use_blast_search
  doc: Do not use BLAST search to locate anchors
  type: boolean
  inputBinding:
    prefix: -b
- id: maximum_number_candidates
  doc: The maximum number of candidates in each sequence. Default 40. No bigger than
    100.
  type: string
  inputBinding:
    prefix: -c
- id: minimum_length_default
  doc: The minimum length of candidates. Default 30
  type: string
  inputBinding:
    prefix: -m
- id: maximum_length_default
  doc: The maximum length of candidates. Default 100
  type: string
  inputBinding:
    prefix: -M
- id: fraction_sequences_expected
  doc: The fraction of the sequences expected to contain the motif. Default 0.80
  type: string
  inputBinding:
    prefix: -f
- id: s_one
  doc: The max number of output single stem-loop motifs
  type: string
  inputBinding:
    prefix: -s1
- id: s_two
  doc: 'The max number of output double stem-loop motifs    '
  type: string
  inputBinding:
    prefix: -s2
- id: combine
  doc: Combine the output motifs. Default False
  type: boolean
  inputBinding:
    prefix: -combine
- id: hmm
  doc: Apply HMM filter for speed up. Default false.
  type: boolean
  inputBinding:
    prefix: -hmm
- id: anchor
  doc: '[FASTA|BLAST|NONE]      Methods to compute the anchors    '
  type: boolean
  inputBinding:
    prefix: -anchor
outputs: []
cwlVersion: v1.1
baseCommand:
- _cmfinder.pl
