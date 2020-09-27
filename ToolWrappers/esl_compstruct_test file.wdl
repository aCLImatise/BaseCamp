version 1.0

task EslcompstructTestfile {
  input {
    Boolean? options
    String esl_comp_struct
    File trusted_file
    File test_file
  }
  command <<<
    esl_compstruct test_file \
      ~{esl_comp_struct} \
      ~{trusted_file} \
      ~{test_file} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
    esl_comp_struct: ""
    trusted_file: ""
    test_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}