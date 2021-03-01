version 1.0

task SingularityPush {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String? push
    String image
  }
  command <<<
    singularity push \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{push} \
      ~{image}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    push: ""
    image: ""
  }
  output {
    File out_stdout = stdout()
  }
}