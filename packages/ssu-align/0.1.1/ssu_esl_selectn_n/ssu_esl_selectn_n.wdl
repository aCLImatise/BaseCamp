version 1.0

task SsueslselectnN {
  input {
    Boolean? options
    File file
  }
  command <<<
    ssu_esl_selectn n \
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