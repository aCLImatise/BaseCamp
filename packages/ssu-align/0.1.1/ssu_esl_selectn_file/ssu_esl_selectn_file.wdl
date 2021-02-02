version 1.0

task SsueslselectnFile {
  input {
    Boolean? options
    String ssu_esl_select_n
    String n
    File file
  }
  command <<<
    ssu_esl_selectn file \
      ~{ssu_esl_select_n} \
      ~{n} \
      ~{file} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
    ssu_esl_select_n: ""
    n: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}