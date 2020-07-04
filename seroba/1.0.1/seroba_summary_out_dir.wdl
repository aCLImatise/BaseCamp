version 1.0

task SerobaSummaryOutDir {
  input {
    String se_rob_a
    String var_command
  }
  command <<<
    seroba summary out_dir \
      ~{se_rob_a} \
      ~{var_command}
  >>>
  parameter_meta {
    se_rob_a: ""
    var_command: ""
  }
}