version 1.0

task SingularityPluginEnable {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String? plugin
    String enable
  }
  command <<<
    singularity plugin enable \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{plugin} \
      ~{enable}
  >>>
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    plugin: ""
    enable: ""
  }
  output {
    File out_stdout = stdout()
  }
}