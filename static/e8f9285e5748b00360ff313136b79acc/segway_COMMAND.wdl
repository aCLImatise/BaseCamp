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
  runtime {
    docker: "None"
  }
  parameter_meta {
    segway: ""
    global_args: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}