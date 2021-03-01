version 1.0

task AlignmentToolsRmpartialseq {
  input {
    String? alignment_mode
    Int? min_gaps
    Int? knn
    File? alignment_out
    String full_length_seq_file
    String query_file
    String passed_seq_outfile
  }
  command <<<
    AlignmentTools rm_partialseq \
      ~{full_length_seq_file} \
      ~{query_file} \
      ~{passed_seq_outfile} \
      ~{if defined(alignment_mode) then ("--alignment-mode " +  '"' + alignment_mode + '"') else ""} \
      ~{if defined(min_gaps) then ("--min_gaps " +  '"' + min_gaps + '"') else ""} \
      ~{if defined(knn) then ("--knn " +  '"' + knn + '"') else ""} \
      ~{if defined(alignment_out) then ("--alignment-out " +  '"' + alignment_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignment_mode: "Alignment mode: overlap, glocal, local or global.\\ndefault = overlap"
    min_gaps: "The minimum number of continuous gaps in the\\nbeginning or end of the query alignment. If above\\nthe cutoff, the query is marked as partial. default\\n= 50"
    knn: "The top k closest targets using a heuristic method.\\n(default = 20)"
    alignment_out: "The output file containing the pairwise alignment"
    full_length_seq_file: ""
    query_file: ""
    passed_seq_outfile: ""
  }
  output {
    File out_stdout = stdout()
    File out_alignment_out = "${in_alignment_out}"
  }
}