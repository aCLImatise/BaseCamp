version 1.0

task Spadescore {
  command <<<
    spades_core
  >>>
  output {
    File out_stdout = stdout()
  }
}