version 1.0

task Sumatra {
  input {
    Boolean? reference_sequence_shortest
    Boolean? reference_sequence_largest
    Boolean? reference_sequence_alignment
    Boolean? score_normalized_reference
    Boolean? raw_score_normalized
    Boolean? score_expressed_expressed
    Boolean? score_threshold_normalized
    Boolean? number_threads_used
    Boolean? _ns_discarded
    Boolean? adds_four_columns
  }
  command <<<
    sumatra \
      ~{if (reference_sequence_shortest) then "-l" else ""} \
      ~{if (reference_sequence_largest) then "-L" else ""} \
      ~{if (reference_sequence_alignment) then "-a" else ""} \
      ~{if (score_normalized_reference) then "-n" else ""} \
      ~{if (raw_score_normalized) then "-r" else ""} \
      ~{if (score_expressed_expressed) then "-d" else ""} \
      ~{if (score_threshold_normalized) then "-t" else ""} \
      ~{if (number_threads_used) then "-p" else ""} \
      ~{if (_ns_discarded) then "-g" else ""} \
      ~{if (adds_four_columns) then "-x" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_sequence_shortest: ": Reference sequence length is the shortest."
    reference_sequence_largest: ": Reference sequence length is the largest."
    reference_sequence_alignment: ": Reference sequence length is the alignment length (default)."
    score_normalized_reference: ": Score is normalized by reference sequence length (default)."
    raw_score_normalized: ": Raw score, not normalized."
    score_expressed_expressed: ": Score is expressed in distance (default: score is expressed in similarity)."
    score_threshold_normalized: "##.## : Score threshold. If the score is normalized and expressed in similarity (default),\\nit is an identity, e.g. 0.95 for an identity of 95%. If the score is normalized\\nand expressed in distance, it is (1.0 - identity), e.g. 0.05 for an identity of 95%.\\nIf the score is not normalized and expressed in similarity, it is the length of the\\nLongest Common Subsequence. If the score is not normalized and expressed in distance,\\nit is (reference length - LCS length).\\nOnly sequence pairs with a similarity above ##.## are printed. Default: 0.00\\n(no threshold)."
    number_threads_used: "##    : Number of threads used for computation (default=1)."
    _ns_discarded: ": n's are replaced with a's (default: sequences with n's are discarded)."
    adds_four_columns: ": Adds four extra columns with the count and length of both sequences."
  }
  output {
    File out_stdout = stdout()
  }
}