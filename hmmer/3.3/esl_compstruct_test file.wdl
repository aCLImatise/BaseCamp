version 1.0

task EslCompstructTest file {
  input {
    Boolean? options
    String esl_comp_struct
    String trusted_file
    String test_file
  }
  command <<<
    esl-compstruct test file \
      ~{esl_comp_struct} \
      ~{trusted_file} \
      ~{test_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    esl_comp_struct: ""
    trusted_file: ""
    test_file: ""
  }
}