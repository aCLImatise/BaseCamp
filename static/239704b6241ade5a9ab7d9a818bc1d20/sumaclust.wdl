version 1.0

task Sumaclust {
  input {
    Boolean? reference_sequence_shortest
    Boolean? reference_sequence_largest
    Boolean? reference_sequence_alignment
    Boolean? score_normalized_reference
    Boolean? raw_score_normalized
    Boolean? score_expressed_expressed
    Boolean? score_threshold_normalized
    Boolean? exact_option_sequence
    Boolean? maximum_ratio_be
    Boolean? multithreading_threads_using
    Boolean? sorting_by_be
    Boolean? sorting_ascending_default
    Boolean? _ns_discarded
    File? output_otu_table
    File? output_otu_map
    File? output_fasta_format_written
    Boolean? output_fasta_format_deactivated
  }
  command <<<
    sumaclust \
      ~{if (reference_sequence_shortest) then "-l" else ""} \
      ~{if (reference_sequence_largest) then "-L" else ""} \
      ~{if (reference_sequence_alignment) then "-a" else ""} \
      ~{if (score_normalized_reference) then "-n" else ""} \
      ~{if (raw_score_normalized) then "-r" else ""} \
      ~{if (score_expressed_expressed) then "-d" else ""} \
      ~{if (score_threshold_normalized) then "-t" else ""} \
      ~{if (exact_option_sequence) then "-e" else ""} \
      ~{if (maximum_ratio_be) then "-R" else ""} \
      ~{if (multithreading_threads_using) then "-p" else ""} \
      ~{if (sorting_by_be) then "-s" else ""} \
      ~{if (sorting_ascending_default) then "-o" else ""} \
      ~{if (_ns_discarded) then "-g" else ""} \
      ~{if (output_otu_table) then "-B" else ""} \
      ~{if (output_otu_map) then "-O" else ""} \
      ~{if (output_fasta_format_written) then "-F" else ""} \
      ~{if (output_fasta_format_deactivated) then "-f" else ""}
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
    score_expressed_expressed: ": Score is expressed in distance (default : score is expressed in similarity)."
    score_threshold_normalized: "##.## : Score threshold for clustering. If the score is normalized and expressed in similarity (default),\\nit is an identity, e.g. 0.95 for an identity of 95%. If the score is normalized\\nand expressed in distance, it is (1.0 - identity), e.g. 0.05 for an identity of 95%.\\nIf the score is not normalized and expressed in similarity, it is the length of the\\nLongest Common Subsequence. If the score is not normalized and expressed in distance,\\nit is (reference length - LCS length).\\nOnly sequences with a similarity above ##.## with the center sequence of a cluster\\nare assigned to that cluster. Default: 0.97."
    exact_option_sequence: ": Exact option : A sequence is assigned to the cluster with the center sequence presenting the\\nhighest similarity score > threshold, as opposed to the default 'fast' option where a sequence is\\nassigned to the first cluster found with a center sequence presenting a score > threshold."
    maximum_ratio_be: "##    : Maximum ratio between the counts of two sequences so that the less abundant one can be considered\\nas a variant of the more abundant one. Default: 1.0."
    multithreading_threads_using: "##    : Multithreading with ## threads using openMP."
    sorting_by_be: "####  : Sorting by ####. Must be 'None' for no sorting, or a key in the fasta header of each sequence,\\nexcept for the count that can be computed (default : sorting by count)."
    sorting_ascending_default: ": Sorting is in ascending order (default : descending)."
    _ns_discarded: ": n's are replaced with a's (default: sequences with n's are discarded)."
    output_otu_table: "###   : Output of the OTU table in BIOM format is activated, and written to file ###."
    output_otu_map: "###   : Output of the OTU map (observation map) is activated, and written to file ###."
    output_fasta_format_written: "###   : Output in FASTA format is written to file ### instead of standard output."
    output_fasta_format_deactivated: ": Output in FASTA format is deactivated."
  }
  output {
    File out_stdout = stdout()
    File out_output_otu_table = "${in_output_otu_table}"
    File out_output_otu_map = "${in_output_otu_map}"
    File out_output_fasta_format_written = "${in_output_fasta_format_written}"
  }
}