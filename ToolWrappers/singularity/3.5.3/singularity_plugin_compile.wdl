version 1.0

task SingularityPluginCompile {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String? plugin
    String? compile
  }
  command <<<
    singularity plugin compile \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{plugin} \
      ~{compile}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    plugin: ""
    compile: ""
  }
  output {
    File out_stdout = stdout()
  }
}