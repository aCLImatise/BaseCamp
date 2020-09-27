version 1.0

task RemoveBadSeqpl {
  command <<<
    removeBadSeq_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}