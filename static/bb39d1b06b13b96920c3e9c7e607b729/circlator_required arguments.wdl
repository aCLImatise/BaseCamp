version 1.0

task CirclatorRequiredarguments {
  input {
    String circ_lator
    String var_command
    String required_arguments
  }
  command <<<
    circlator required_arguments \
      ~{circ_lator} \
      ~{var_command} \
      ~{required_arguments}
  >>>
  parameter_meta {
    circ_lator: ""
    var_command: ""
    required_arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}