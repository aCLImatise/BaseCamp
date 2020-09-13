version 1.0

task AfplotWholegenome {
  command <<<
    afplot whole_genome
  >>>
  output {
    File out_stdout = stdout()
  }
}