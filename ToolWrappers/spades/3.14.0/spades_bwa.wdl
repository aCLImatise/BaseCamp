version 1.0

task Spadesbwa {
  command <<<
    spades_bwa
  >>>
  output {
    File out_stdout = stdout()
  }
}