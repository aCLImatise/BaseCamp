version 1.0

task AribaRefqueryClusternamesequencename {
  input {
    String ariba
    String ref_query
    Directory prepare_ref_directory
    String cluster_vertical_line_seq
    String cluster_name_vertical_line_sequence_name
  }
  command <<<
    ariba refquery cluster_name_sequence_name \
      ~{ariba} \
      ~{ref_query} \
      ~{prepare_ref_directory} \
      ~{cluster_vertical_line_seq} \
      ~{cluster_name_vertical_line_sequence_name}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0"
  }
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