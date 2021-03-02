version 1.0

task SsueslselectnFile {
  input {
    Boolean? options
    String ssu_esl_select_n
    String n
    File var_file
  }
  command <<<
    ssu_esl_selectn file \
      ~{ssu_esl_select_n} \
      ~{n} \
      ~{var_file} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
    ssu_esl_select_n: ""
    n: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}