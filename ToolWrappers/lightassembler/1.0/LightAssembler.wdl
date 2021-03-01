version 1.0

task LightAssembler {
  command <<<
    LightAssembler
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}