version 1.0

task Annotationsconfig {
  command <<<
    annotations_config
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}