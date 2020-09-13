version 1.0

task KseqSplit {
  command <<<
    kseq_split
  >>>
  output {
    File out_stdout = stdout()
  }
}