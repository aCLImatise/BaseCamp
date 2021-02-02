version 1.0

task Rpsblast {
  command <<<
    rpsblast
  >>>
  output {
    File out_stdout = stdout()
  }
}