version 1.0

task EslselectnN {
  input {
    Boolean? options
    File var_file
  }
  command <<<
    esl_selectn n \
      ~{var_file} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/easel:0.47--h516909a_0"
  }
  parameter_meta {
    options: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}