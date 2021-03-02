version 1.0

task EslcompalignTestfile {
  input {
    Boolean? options
    String esl_comp_align
    File trusted_file
    File test_file
  }
  command <<<
    esl_compalign test_file \
      ~{esl_comp_align} \
      ~{trusted_file} \
      ~{test_file} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/easel:0.47--h516909a_0"
  }
  parameter_meta {
    options: ""
    esl_comp_align: ""
    trusted_file: ""
    test_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}