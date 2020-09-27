version 1.0

task ArrowCannedkeysContaining {
  input {
    String arrow
    String canned_keys
    String var_command
    String? args
  }
  command <<<
    arrow cannedkeys containing___ \
      ~{arrow} \
      ~{canned_keys} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    arrow: ""
    canned_keys: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}