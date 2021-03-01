version 1.0

task SingularityVerifyVerify {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String? verify
  }
  command <<<
    singularity verify verify \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{verify}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    verify: ""
  }
  output {
    File out_stdout = stdout()
  }
}