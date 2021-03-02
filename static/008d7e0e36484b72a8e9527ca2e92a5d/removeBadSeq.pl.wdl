version 1.0

task RemoveBadSeqpl {
  command <<<
    removeBadSeq_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}