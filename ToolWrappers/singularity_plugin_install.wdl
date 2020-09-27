version 1.0

task SingularityPluginInstall {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String? plugin
    String? install
  }
  command <<<
    singularity plugin install \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{plugin} \
      ~{install}
  >>>
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    plugin: ""
    install: ""
  }
  output {
    File out_stdout = stdout()
  }
}