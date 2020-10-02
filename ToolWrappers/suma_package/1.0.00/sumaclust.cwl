class: CommandLineTool
id: sumaclust.cwl
inputs:
- id: in_reference_sequence_shortest
  doc: ': Reference sequence length is the shortest.'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_reference_sequence_largest
  doc: ': Reference sequence length is the largest.'
  type: boolean
  inputBinding:
    prefix: -L
- id: in_reference_sequence_alignment
  doc: ': Reference sequence length is the alignment length (default).'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_score_normalized_reference
  doc: ': Score is normalized by reference sequence length (default).'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_raw_score_normalized
  doc: ': Raw score, not normalized.'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_score_expressed_expressed
  doc: ': Score is expressed in distance (default : score is expressed in similarity).'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_score_threshold_normalized
  doc: "##.## : Score threshold for clustering. If the score is normalized and expressed\
    \ in similarity (default),\nit is an identity, e.g. 0.95 for an identity of 95%.\
    \ If the score is normalized\nand expressed in distance, it is (1.0 - identity),\
    \ e.g. 0.05 for an identity of 95%.\nIf the score is not normalized and expressed\
    \ in similarity, it is the length of the\nLongest Common Subsequence. If the score\
    \ is not normalized and expressed in distance,\nit is (reference length - LCS\
    \ length).\nOnly sequences with a similarity above ##.## with the center sequence\
    \ of a cluster\nare assigned to that cluster. Default: 0.97."
  type: boolean
  inputBinding:
    prefix: -t
- id: in_exact_option_sequence
  doc: ": Exact option : A sequence is assigned to the cluster with the center sequence\
    \ presenting the\nhighest similarity score > threshold, as opposed to the default\
    \ 'fast' option where a sequence is\nassigned to the first cluster found with\
    \ a center sequence presenting a score > threshold."
  type: boolean
  inputBinding:
    prefix: -e
- id: in_maximum_ratio_counts
  doc: "##    : Maximum ratio between the counts of two sequences so that the less\
    \ abundant one can be considered\nas a variant of the more abundant one. Default:\
    \ 1.0."
  type: boolean
  inputBinding:
    prefix: -R
- id: in_multithreading_using_openmp
  doc: '##    : Multithreading with ## threads using openMP.'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_sorting_by_must
  doc: "####  : Sorting by ####. Must be 'None' for no sorting, or a key in the fasta\
    \ header of each sequence,\nexcept for the count that can be computed (default\
    \ : sorting by count)."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_sorting_ascending_order
  doc: ': Sorting is in ascending order (default : descending).'
  type: boolean
  inputBinding:
    prefix: -o
- id: in__ns_discarded
  doc: ": n's are replaced with a's (default: sequences with n's are discarded)."
  type: boolean
  inputBinding:
    prefix: -g
- id: in_output_otu_table
  doc: '###   : Output of the OTU table in BIOM format is activated, and written to
    file ###.'
  type: File
  inputBinding:
    prefix: -B
- id: in_output_otu_map
  doc: '###   : Output of the OTU map (observation map) is activated, and written
    to file ###.'
  type: File
  inputBinding:
    prefix: -O
- id: in_output_fasta_format_written
  doc: '###   : Output in FASTA format is written to file ### instead of standard
    output.'
  type: File
  inputBinding:
    prefix: -F
- id: in_output_fasta_format_deactivated
  doc: ': Output in FASTA format is deactivated.'
  type: boolean
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_otu_table
  doc: '###   : Output of the OTU table in BIOM format is activated, and written to
    file ###.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_otu_table)
- id: out_output_otu_map
  doc: '###   : Output of the OTU map (observation map) is activated, and written
    to file ###.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_otu_map)
- id: out_output_fasta_format_written
  doc: '###   : Output in FASTA format is written to file ### instead of standard
    output.'
  type: File
  outputBinding:
    glob: $(inputs.in_output_fasta_format_written)
cwlVersion: v1.1
baseCommand:
- sumaclust
