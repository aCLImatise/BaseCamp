version 1.0

task ArrowScripts {
  input {
    String arrow
    String var_command
    String? args
  }
  command <<<
    arrow scripts_ \
      ~{arrow} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arrow: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}