version 1.0

task Seqcount {
  command <<<
    seqcount
  >>>
  output {
    File out_stdout = stdout()
  }
}