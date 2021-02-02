version 1.0

task SingularityOciUmount {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String oci
    String umount
  }
  command <<<
    singularity oci umount \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{oci} \
      ~{umount}
  >>>
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    oci: ""
    umount: ""
  }
  output {
    File out_stdout = stdout()
  }
}