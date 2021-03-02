version 1.0

task SingularityOciPause {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String oci
    String pause
  }
  command <<<
    singularity oci pause \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{oci} \
      ~{pause}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    oci: ""
    pause: ""
  }
  output {
    File out_stdout = stdout()
  }
}