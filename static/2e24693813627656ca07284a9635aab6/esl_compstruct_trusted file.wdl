version 1.0

task EslcompstructTrustedfile {
  input {
    Boolean? options
    File test_file
  }
  command <<<
    esl_compstruct trusted_file \
      ~{test_file} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
    test_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}