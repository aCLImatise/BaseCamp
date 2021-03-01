version 1.0

task SsueslcompalignTestfile {
  input {
    Boolean? options
    String ssu_esl_comp_align
    File trusted_file
    File test_file
  }
  command <<<
    ssu_esl_compalign test_file \
      ~{ssu_esl_comp_align} \
      ~{trusted_file} \
      ~{test_file} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
    ssu_esl_comp_align: ""
    trusted_file: ""
    test_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}