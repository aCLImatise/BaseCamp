version 1.0

task SingularityOciUpdate {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String oci
    String? update
  }
  command <<<
    singularity oci update \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{oci} \
      ~{update}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    oci: ""
    update: ""
  }
  output {
    File out_stdout = stdout()
  }
}