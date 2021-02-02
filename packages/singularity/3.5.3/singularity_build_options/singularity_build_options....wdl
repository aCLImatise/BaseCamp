version 1.0

task SingularityBuildOptions {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String build
    String? local
    File image_path
  }
  command <<<
    singularity build options___ \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{build} \
      ~{local} \
      ~{image_path}
  >>>
  parameter_meta {
    singularity: ""
    global: ""
    options_dot_dot_dot: ""
    build: ""
    local: ""
    image_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}