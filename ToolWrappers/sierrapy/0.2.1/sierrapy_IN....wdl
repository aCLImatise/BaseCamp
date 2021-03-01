version 1.0

task SierrapyIN {
  input {
    String sierra_py
    String var_command
    String? args
  }
  command <<<
    sierrapy IN___ \
      ~{sierra_py} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sierra_py: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}