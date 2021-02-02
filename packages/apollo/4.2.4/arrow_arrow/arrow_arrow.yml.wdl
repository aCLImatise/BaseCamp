version 1.0

task ArrowArrowyml {
  input {
    String arrow
    String var_command
    String? args
  }
  command <<<
    arrow arrow_yml \
      ~{arrow} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    arrow: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}