version 1.0

task BpSplitSeqpl {
  command <<<
    bp_split_seq_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}