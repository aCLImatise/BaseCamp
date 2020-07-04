version 1.0

task ScreedArgs {
  input {
    String screed
    String var_command
    String? args
  }
  command <<<
    screed args \
      ~{screed} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    screed: ""
    var_command: ""
    args: ""
  }
}