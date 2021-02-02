version 1.0

task SingularityDelete {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String delete
    String? arch
  }
  command <<<
    singularity delete \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{delete} \
      ~{arch}
  >>>
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    delete: ""
    arch: ""
  }
  output {
    File out_stdout = stdout()
  }
}