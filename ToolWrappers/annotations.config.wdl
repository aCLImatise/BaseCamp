version 1.0

task Annotationsconfig {
  command <<<
    annotations_config
  >>>
  output {
    File out_stdout = stdout()
  }
}