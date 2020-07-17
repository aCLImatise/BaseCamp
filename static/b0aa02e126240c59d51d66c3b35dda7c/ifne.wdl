version 1.0

task Ifne {
  input {
    Boolean? n
    String var_command
    String? args
  }
  command <<<
    ifne \
      ~{var_command} \
      ~{args} \
      ~{true="-n" false="" n}
  >>>
  parameter_meta {
    n: ""
    var_command: ""
    args: ""
  }
}