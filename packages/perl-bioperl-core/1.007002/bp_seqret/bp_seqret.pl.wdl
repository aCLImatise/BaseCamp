version 1.0

task BpSeqretpl {
  command <<<
    bp_seqret_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}