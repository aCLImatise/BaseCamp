version 1.0

task SingularityRemoteUse {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String? remote
    String? use
  }
  command <<<
    singularity remote use \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{remote} \
      ~{use}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    remote: ""
    use: ""
  }
  output {
    File out_stdout = stdout()
  }
}