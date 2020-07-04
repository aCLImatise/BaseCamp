version 1.0

task EslSelectnFile {
  input {
    Boolean? options
    String esl_select_n
    String n
    File file
  }
  command <<<
    esl-selectn file \
      ~{esl_select_n} \
      ~{n} \
      ~{file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    esl_select_n: ""
    n: ""
    file: ""
  }
}