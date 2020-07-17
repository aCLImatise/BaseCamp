version 1.0

task SegwayArgs {
  input {
    String segway
    String? global_args
    String var_command
    String? args
  }
  command <<<
    segway args \
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