version 1.0

task BpSeqretsplitpl {
  command <<<
    bp_seqretsplit_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}