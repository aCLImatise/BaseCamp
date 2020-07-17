version 1.0

task SerobaVersion {
  input {
    String se_rob_a
    String var_command
  }
  command <<<
    seroba version \
      ~{se_rob_a} \
      ~{var_command}
  >>>
  parameter_meta {
    se_rob_a: ""
    var_command: ""
  }
}