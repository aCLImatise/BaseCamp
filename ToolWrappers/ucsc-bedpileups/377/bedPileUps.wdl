version 1.0

task BedPileUps {
  command <<<
    bedPileUps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}