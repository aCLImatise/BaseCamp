version 1.0

task SingularityOciResume {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String oci
    String resume
  }
  command <<<
    singularity oci resume \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{oci} \
      ~{resume}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    oci: ""
    resume: ""
  }
  output {
    File out_stdout = stdout()
  }
}