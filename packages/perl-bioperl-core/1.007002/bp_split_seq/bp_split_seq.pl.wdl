version 1.0

task BpSplitSeqpl {
  command <<<
    bp_split_seq_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}