version 1.0

task SsueslselectnN {
  input {
    Boolean? options
    File var_file
  }
  command <<<
    ssu_esl_selectn n \
      ~{var_file} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}