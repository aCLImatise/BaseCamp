version 1.0

task CirclatorRequired arguments {
  input {
    String circ_lator
    String var_command
    String required_arguments
  }
  command <<<
    circlator required arguments \
      ~{circ_lator} \
      ~{var_command} \
      ~{required_arguments}
  >>>
  parameter_meta {
    circ_lator: ""
    var_command: ""
    required_arguments: ""
  }
}