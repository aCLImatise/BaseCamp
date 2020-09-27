version 1.0

task AribaRefqueryClusterseq {
  input {
    String ariba
    String ref_query
    Directory prepare_ref_directory
    String cluster_vertical_line_seq
    String cluster_name_vertical_line_sequence_name
  }
  command <<<
    ariba refquery cluster_seq \
      ~{ariba} \
      ~{ref_query} \
      ~{prepare_ref_directory} \
      ~{cluster_vertical_line_seq} \
      ~{cluster_name_vertical_line_sequence_name}
  >>>
  parameter_meta {
    ariba: ""
    ref_query: ""
    prepare_ref_directory: ""
    cluster_vertical_line_seq: ""
    cluster_name_vertical_line_sequence_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}