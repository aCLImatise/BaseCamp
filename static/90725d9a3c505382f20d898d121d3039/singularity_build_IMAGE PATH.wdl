version 1.0

task SingularityBuildIMAGEPATH {
  input {
    String singularity
    String? global
    String? options_dot_dot_dot
    String build
    String? local
    File image_path
  }
  command <<<
    singularity build IMAGE_PATH \
      ~{singularity} \
      ~{global} \
      ~{options_dot_dot_dot} \
      ~{build} \
      ~{local} \
      ~{image_path}
  >>>
  runtime {
    docker: "None"
  }
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