version 1.0

task SegwayGlobalArgs {
  input {
    String var_command
    String? args
  }
  command <<<
    segway global_args \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}