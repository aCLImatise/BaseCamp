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
    docker: "quay.io/biocontainers/segway:3.0.3--pyh3252c3a_0"
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