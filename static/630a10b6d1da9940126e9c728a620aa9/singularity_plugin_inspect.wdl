version 1.0

task SingularityPluginInspect {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String? plugin
    String inspect
  }
  command <<<
    singularity plugin inspect \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{plugin} \
      ~{inspect}
  >>>
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    plugin: ""
    inspect: ""
  }
  output {
    File out_stdout = stdout()
  }
}