version 1.0

task EslcompalignTrustedfile {
  input {
    Boolean? options
    File test_file
  }
  command <<<
    esl_compalign trusted_file \
      ~{test_file} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/easel:0.47--h516909a_0"
  }
  parameter_meta {
    options: ""
    test_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}