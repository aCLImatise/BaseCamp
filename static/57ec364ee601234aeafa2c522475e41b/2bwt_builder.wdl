version 1.0

task Bwtbuilder {
  input {
    File sequence_file
    String? var_output
    String? index
    String? prefix
  }
  command <<<
    _bwt_builder \
      ~{sequence_file} \
      ~{var_output} \
      ~{index} \
      ~{prefix}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sequence_file: ""
    var_output: ""
    index: ""
    prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}