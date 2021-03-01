version 1.0

task SsueslcompstructTestfile {
  input {
    Boolean? options
    String ssu_esl_comp_struct
    File trusted_file
    File test_file
  }
  command <<<
    ssu_esl_compstruct test_file \
      ~{ssu_esl_comp_struct} \
      ~{trusted_file} \
      ~{test_file} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
    ssu_esl_comp_struct: ""
    trusted_file: ""
    test_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}