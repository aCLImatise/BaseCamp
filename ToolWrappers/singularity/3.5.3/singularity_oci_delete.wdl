version 1.0

task SingularityOciDelete {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String oci
    String delete
  }
  command <<<
    singularity oci delete \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{oci} \
      ~{delete}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    oci: ""
    delete: ""
  }
  output {
    File out_stdout = stdout()
  }
}