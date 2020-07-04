version 1.0

task Snoscan {
  input {
    Boolean? options
    String rrna_sequence_file
    String query_sequence_file
  }
  command <<<
    snoscan \
      ~{rrna_sequence_file} \
      ~{query_sequence_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    rrna_sequence_file: ""
    query_sequence_file: ""
  }
}