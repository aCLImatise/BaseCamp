version 1.0

task Makerep {
  command <<<
    makerep
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}