version 1.0

task MirrorMappings {
  command <<<
    mirrorMappings
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}