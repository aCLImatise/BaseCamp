version 1.0

task SingularityOciState {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String oci
    String state
  }
  command <<<
    singularity oci state \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{oci} \
      ~{state}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    oci: ""
    state: ""
  }
  output {
    File out_stdout = stdout()
  }
}