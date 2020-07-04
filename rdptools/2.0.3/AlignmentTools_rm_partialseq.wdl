version 1.0

task AlignmentToolsRmPartialseq {
  input {
    String? alignment_mode
    String? min_gaps
    String? knn
    String? alignment_out
    String full_length_seq_file
    String query_file
    String passed_seq_outfile
  }
  command <<<
    AlignmentTools rm-partialseq \
      ~{full_length_seq_file} \
      ~{query_file} \
      ~{passed_seq_outfile} \
      ~{if defined(alignment_mode) then ("--alignment-mode " +  '"' + alignment_mode + '"') else ""} \
      ~{if defined(min_gaps) then ("--min_gaps " +  '"' + min_gaps + '"') else ""} \
      ~{if defined(knn) then ("--knn " +  '"' + knn + '"') else ""} \
      ~{if defined(alignment_out) then ("--alignment-out " +  '"' + alignment_out + '"') else ""}
  >>>
  parameter_meta {
    alignment_mode: "Alignment mode: overlap, glocal, local or global. default = overlap"
    min_gaps: "The minimum number of continuous gaps in the beginning or end of the query alignment. If above the cutoff, the query is marked as partial. default = 50"
    knn: "The top k closest targets using a heuristic method. (default = 20)"
    alignment_out: "The output file containing the pairwise alignment"
    full_length_seq_file: ""
    query_file: ""
    passed_seq_outfile: ""
  }
}