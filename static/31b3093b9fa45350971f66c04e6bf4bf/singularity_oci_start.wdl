version 1.0

task SingularityOciStart {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String oci
    String start
  }
  command <<<
    singularity oci start \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{oci} \
      ~{start}
  >>>
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    oci: ""
    start: ""
  }
  output {
    File out_stdout = stdout()
  }
}