version 1.0

task Sumaclust {
  input {
    Boolean? reference_sequence_shortest
    Boolean? reference_sequence_largest
    Boolean? reference_sequence_alignment
    Boolean? score_normalized_reference
    Boolean? raw_score_normalized
    Boolean? score_expressed_expressed
    Boolean? score_threshold_clustering
    Boolean? exact_option_sequence
    Boolean? maximum_ratio_considered
    Boolean? multithreading_threads_using
    Boolean? sorting_by_must
    Boolean? sorting_ascending_default
    Boolean? _ns_discarded
    Boolean? output_otu_table
    Boolean? output_otu_map
    Boolean? output_fasta_format_written
    Boolean? output_fasta_format_deactivated
    String dataset
  }
  command <<<
    sumaclust \
      ~{dataset} \
      ~{true="-l" false="" reference_sequence_shortest} \
      ~{true="-L" false="" reference_sequence_largest} \
      ~{true="-a" false="" reference_sequence_alignment} \
      ~{true="-n" false="" score_normalized_reference} \
      ~{true="-r" false="" raw_score_normalized} \
      ~{true="-d" false="" score_expressed_expressed} \
      ~{true="-t" false="" score_threshold_clustering} \
      ~{true="-e" false="" exact_option_sequence} \
      ~{true="-R" false="" maximum_ratio_considered} \
      ~{true="-p" false="" multithreading_threads_using} \
      ~{true="-s" false="" sorting_by_must} \
      ~{true="-o" false="" sorting_ascending_default} \
      ~{true="-g" false="" _ns_discarded} \
      ~{true="-B" false="" output_otu_table} \
      ~{true="-O" false="" output_otu_map} \
      ~{true="-F" false="" output_fasta_format_written} \
      ~{true="-f" false="" output_fasta_format_deactivated}
  >>>
  parameter_meta {
    reference_sequence_shortest: ": Reference sequence length is the shortest. "
    reference_sequence_largest: ": Reference sequence length is the largest. "
    reference_sequence_alignment: ": Reference sequence length is the alignment length (default). "
    score_normalized_reference: ": Score is normalized by reference sequence length (default)."
    raw_score_normalized: ": Raw score, not normalized. "
    score_expressed_expressed: ": Score is expressed in distance (default : score is expressed in similarity). "
    score_threshold_clustering: "##.## : Score threshold for clustering. If the score is normalized and expressed in similarity (default), it is an identity, e.g. 0.95 for an identity of 95%. If the score is normalized and expressed in distance, it is (1.0 - identity), e.g. 0.05 for an identity of 95%. If the score is not normalized and expressed in similarity, it is the length of the Longest Common Subsequence. If the score is not normalized and expressed in distance, it is (reference length - LCS length). Only sequences with a similarity above ##.## with the center sequence of a cluster are assigned to that cluster. Default: 0.97."
    exact_option_sequence: ": Exact option : A sequence is assigned to the cluster with the center sequence presenting the highest similarity score > threshold, as opposed to the default 'fast' option where a sequence is assigned to the first cluster found with a center sequence presenting a score > threshold."
    maximum_ratio_considered: "##    : Maximum ratio between the counts of two sequences so that the less abundant one can be considered as a variant of the more abundant one. Default: 1.0."
    multithreading_threads_using: "##    : Multithreading with ## threads using openMP."
    sorting_by_must: "####  : Sorting by ####. Must be 'None' for no sorting, or a key in the fasta header of each sequence, except for the count that can be computed (default : sorting by count)."
    sorting_ascending_default: ": Sorting is in ascending order (default : descending)."
    _ns_discarded: ": n's are replaced with a's (default: sequences with n's are discarded)."
    output_otu_table: "###   : Output of the OTU table in BIOM format is activated, and written to file ###."
    output_otu_map: "###   : Output of the OTU map (observation map) is activated, and written to file ###."
    output_fasta_format_written: "###   : Output in FASTA format is written to file ### instead of standard output."
    output_fasta_format_deactivated: ": Output in FASTA format is deactivated."
    dataset: ""
  }
}