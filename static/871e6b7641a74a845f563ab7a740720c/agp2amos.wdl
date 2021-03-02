version 1.0

task Agp2amos {
  command <<<
    agp2amos
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}