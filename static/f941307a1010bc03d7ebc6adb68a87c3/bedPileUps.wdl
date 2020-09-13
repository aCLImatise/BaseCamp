version 1.0

task BedPileUps {
  command <<<
    bedPileUps
  >>>
  output {
    File out_stdout = stdout()
  }
}