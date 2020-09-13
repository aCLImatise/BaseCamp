version 1.0

task EslselectnFile {
  input {
    Boolean? options
    String esl_select_n
    String n
    File file
  }
  command <<<
    esl_selectn file \
      ~{esl_select_n} \
      ~{n} \
      ~{file} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
    esl_select_n: ""
    n: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}