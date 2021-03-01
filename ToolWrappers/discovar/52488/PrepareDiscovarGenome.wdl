version 1.0

task PrepareDiscovarGenome {
  command <<<
    PrepareDiscovarGenome
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}