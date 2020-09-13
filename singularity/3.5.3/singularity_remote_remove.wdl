version 1.0

task SingularityRemoteRemove {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String? remote
    String? remove
  }
  command <<<
    singularity remote remove \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{remote} \
      ~{remove}
  >>>
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    remote: ""
    remove: ""
  }
  output {
    File out_stdout = stdout()
  }
}