class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sumatra.cwl
inputs:
- id: reference_sequence_shortest
  doc: ': Reference sequence length is the shortest. '
  type: boolean
  inputBinding:
    prefix: -l
- id: reference_sequence_largest
  doc: ': Reference sequence length is the largest. '
  type: boolean
  inputBinding:
    prefix: -L
- id: reference_sequence_alignment
  doc: ': Reference sequence length is the alignment length (default). '
  type: boolean
  inputBinding:
    prefix: -a
- id: score_normalized_reference
  doc: ': Score is normalized by reference sequence length (default).'
  type: boolean
  inputBinding:
    prefix: -n
- id: raw_score_normalized
  doc: ': Raw score, not normalized. '
  type: boolean
  inputBinding:
    prefix: -r
- id: score_expressed_expressed
  doc: ': Score is expressed in distance (default: score is expressed in similarity). '
  type: boolean
  inputBinding:
    prefix: -d
- id: score_threshold_score
  doc: '##.## : Score threshold. If the score is normalized and expressed in similarity
    (default), it is an identity, e.g. 0.95 for an identity of 95%. If the score is
    normalized and expressed in distance, it is (1.0 - identity), e.g. 0.05 for an
    identity of 95%. If the score is not normalized and expressed in similarity, it
    is the length of the Longest Common Subsequence. If the score is not normalized
    and expressed in distance, it is (reference length - LCS length). Only sequence
    pairs with a similarity above ##.## are printed. Default: 0.00  (no threshold).'
  type: boolean
  inputBinding:
    prefix: -t
- id: number_threads_used
  doc: '##    : Number of threads used for computation (default=1).'
  type: boolean
  inputBinding:
    prefix: -p
- id: _ns_discarded
  doc: ": n's are replaced with a's (default: sequences with n's are discarded)."
  type: boolean
  inputBinding:
    prefix: -g
- id: adds_four_columns
  doc: ': Adds four extra columns with the count and length of both sequences.'
  type: boolean
  inputBinding:
    prefix: -x
- id: dataset_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dataset_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sumatra
