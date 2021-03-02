version 1.0

task EslselectnFile {
  input {
    Boolean? options
    String esl_select_n
    String n
    File var_file
  }
  command <<<
    esl_selectn file \
      ~{esl_select_n} \
      ~{n} \
      ~{var_file} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/easel:0.47--h516909a_0"
  }
  parameter_meta {
    options: ""
    esl_select_n: ""
    n: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}