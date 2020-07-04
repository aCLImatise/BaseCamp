version 1.0

task Sumatra {
  input {
    Boolean? reference_sequence_shortest
    Boolean? reference_sequence_largest
    Boolean? reference_sequence_alignment
    Boolean? score_normalized_reference
    Boolean? raw_score_normalized
    Boolean? score_expressed_expressed
    Boolean? score_threshold_score
    Boolean? number_threads_used
    Boolean? _ns_discarded
    Boolean? adds_four_columns
    String dataset_one
    String? dataset_two
  }
  command <<<
    sumatra \
      ~{dataset_one} \
      ~{dataset_two} \
      ~{true="-l" false="" reference_sequence_shortest} \
      ~{true="-L" false="" reference_sequence_largest} \
      ~{true="-a" false="" reference_sequence_alignment} \
      ~{true="-n" false="" score_normalized_reference} \
      ~{true="-r" false="" raw_score_normalized} \
      ~{true="-d" false="" score_expressed_expressed} \
      ~{true="-t" false="" score_threshold_score} \
      ~{true="-p" false="" number_threads_used} \
      ~{true="-g" false="" _ns_discarded} \
      ~{true="-x" false="" adds_four_columns}
  >>>
  parameter_meta {
    reference_sequence_shortest: ": Reference sequence length is the shortest. "
    reference_sequence_largest: ": Reference sequence length is the largest. "
    reference_sequence_alignment: ": Reference sequence length is the alignment length (default). "
    score_normalized_reference: ": Score is normalized by reference sequence length (default)."
    raw_score_normalized: ": Raw score, not normalized. "
    score_expressed_expressed: ": Score is expressed in distance (default: score is expressed in similarity). "
    score_threshold_score: "##.## : Score threshold. If the score is normalized and expressed in similarity (default), it is an identity, e.g. 0.95 for an identity of 95%. If the score is normalized and expressed in distance, it is (1.0 - identity), e.g. 0.05 for an identity of 95%. If the score is not normalized and expressed in similarity, it is the length of the Longest Common Subsequence. If the score is not normalized and expressed in distance, it is (reference length - LCS length). Only sequence pairs with a similarity above ##.## are printed. Default: 0.00  (no threshold)."
    number_threads_used: "##    : Number of threads used for computation (default=1)."
    _ns_discarded: ": n's are replaced with a's (default: sequences with n's are discarded)."
    adds_four_columns: ": Adds four extra columns with the count and length of both sequences."
    dataset_one: ""
    dataset_two: ""
  }
}