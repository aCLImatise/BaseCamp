version 1.0

task 2bwtBuilder {
  input {
    String sequence_file
    String? var_output
    String? index
    String? prefix
  }
  command <<<
    2bwt-builder \
      ~{sequence_file} \
      ~{var_output} \
      ~{index} \
      ~{prefix}
  >>>
  parameter_meta {
    sequence_file: ""
    var_output: ""
    index: ""
    prefix: ""
  }
}