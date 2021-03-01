version 1.0

task SingularityPluginUninstall {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String? plugin
    String uninstall
  }
  command <<<
    singularity plugin uninstall \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{plugin} \
      ~{uninstall}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    plugin: ""
    uninstall: ""
  }
  output {
    File out_stdout = stdout()
  }
}