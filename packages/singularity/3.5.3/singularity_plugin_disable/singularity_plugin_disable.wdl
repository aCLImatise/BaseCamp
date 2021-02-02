version 1.0

task SingularityPluginDisable {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String? plugin
    String disable
  }
  command <<<
    singularity plugin disable \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{plugin} \
      ~{disable}
  >>>
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    plugin: ""
    disable: ""
  }
  output {
    File out_stdout = stdout()
  }
}