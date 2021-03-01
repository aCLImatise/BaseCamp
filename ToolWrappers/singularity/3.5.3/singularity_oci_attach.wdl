version 1.0

task SingularityOciAttach {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String oci
    String attach
  }
  command <<<
    singularity oci attach \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{oci} \
      ~{attach}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    oci: ""
    attach: ""
  }
  output {
    File out_stdout = stdout()
  }
}