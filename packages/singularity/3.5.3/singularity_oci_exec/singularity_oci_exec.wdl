version 1.0

task SingularityOciExec {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String oci
    String exec
    String container_id
    String var_command
  }
  command <<<
    singularity oci exec \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{oci} \
      ~{exec} \
      ~{container_id} \
      ~{var_command}
  >>>
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    oci: ""
    exec: ""
    container_id: ""
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}