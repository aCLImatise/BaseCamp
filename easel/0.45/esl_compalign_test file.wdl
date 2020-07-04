version 1.0

task EslCompalignTest file {
  input {
    Boolean? options
    String esl_comp_align
    String trusted_file
    String test_file
  }
  command <<<
    esl-compalign test file \
      ~{esl_comp_align} \
      ~{trusted_file} \
      ~{test_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    esl_comp_align: ""
    trusted_file: ""
    test_file: ""
  }
}