version 1.0

task SingularityRemoteAdd {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String? remote
    String? add
    String remote_name
  }
  command <<<
    singularity remote add \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{remote} \
      ~{add} \
      ~{remote_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    remote: ""
    add: ""
    remote_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}