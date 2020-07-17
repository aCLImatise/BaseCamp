version 1.0

task SegwayCOMMAND {
  input {
    String segway
    String? global_args
    String var_command
    String? args
  }
  command <<<
    segway COMMAND \
      ~{segway} \
      ~{global_args} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    segway: ""
    global_args: ""
    var_command: ""
    args: ""
  }
}