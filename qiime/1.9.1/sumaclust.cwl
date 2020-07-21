class: CommandLineTool
id: ../../../sumaclust.cwl
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
  doc: ': Score is expressed in distance (default : score is expressed in similarity). '
  type: boolean
  inputBinding:
    prefix: -d
- id: score_threshold_clustering
  doc: '##.## : Score threshold for clustering. If the score is normalized and expressed
    in similarity (default), it is an identity, e.g. 0.95 for an identity of 95%.
    If the score is normalized and expressed in distance, it is (1.0 - identity),
    e.g. 0.05 for an identity of 95%. If the score is not normalized and expressed
    in similarity, it is the length of the Longest Common Subsequence. If the score
    is not normalized and expressed in distance, it is (reference length - LCS length).
    Only sequences with a similarity above ##.## with the center sequence of a cluster
    are assigned to that cluster. Default: 0.97.'
  type: boolean
  inputBinding:
    prefix: -t
- id: exact_option_sequence
  doc: ": Exact option : A sequence is assigned to the cluster with the center sequence\
    \ presenting the highest similarity score > threshold, as opposed to the default\
    \ 'fast' option where a sequence is assigned to the first cluster found with a\
    \ center sequence presenting a score > threshold."
  type: boolean
  inputBinding:
    prefix: -e
- id: maximum_ratio_considered
  doc: '##    : Maximum ratio between the counts of two sequences so that the less
    abundant one can be considered as a variant of the more abundant one. Default:
    1.0.'
  type: boolean
  inputBinding:
    prefix: -R
- id: multithreading_threads_using
  doc: '##    : Multithreading with ## threads using openMP.'
  type: boolean
  inputBinding:
    prefix: -p
- id: sorting_by_must
  doc: "####  : Sorting by ####. Must be 'None' for no sorting, or a key in the fasta\
    \ header of each sequence, except for the count that can be computed (default\
    \ : sorting by count)."
  type: boolean
  inputBinding:
    prefix: -s
- id: sorting_ascending_default
  doc: ': Sorting is in ascending order (default : descending).'
  type: boolean
  inputBinding:
    prefix: -o
- id: _ns_discarded
  doc: ": n's are replaced with a's (default: sequences with n's are discarded)."
  type: boolean
  inputBinding:
    prefix: -g
- id: output_otu_table
  doc: '###   : Output of the OTU table in BIOM format is activated, and written to
    file ###.'
  type: boolean
  inputBinding:
    prefix: -B
- id: output_otu_map
  doc: '###   : Output of the OTU map (observation map) is activated, and written
    to file ###.'
  type: boolean
  inputBinding:
    prefix: -O
- id: output_fasta_format_written
  doc: '###   : Output in FASTA format is written to file ### instead of standard
    output.'
  type: boolean
  inputBinding:
    prefix: -F
- id: output_fasta_format_deactivated
  doc: ': Output in FASTA format is deactivated.'
  type: boolean
  inputBinding:
    prefix: -f
- id: dataset
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sumaclust
