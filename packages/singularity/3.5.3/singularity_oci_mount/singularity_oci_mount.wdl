version 1.0

task SingularityOciMount {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String oci
    String mount
    String s_if_image
  }
  command <<<
    singularity oci mount \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{oci} \
      ~{mount} \
      ~{s_if_image}
  >>>
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    oci: ""
    mount: ""
    s_if_image: ""
  }
  output {
    File out_stdout = stdout()
  }
}