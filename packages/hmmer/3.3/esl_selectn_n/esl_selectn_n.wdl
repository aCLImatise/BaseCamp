version 1.0

task EslselectnN {
  input {
    Boolean? options
    File file
  }
  command <<<
    esl_selectn n \
      ~{file} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}