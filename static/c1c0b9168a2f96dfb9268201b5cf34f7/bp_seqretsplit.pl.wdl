version 1.0

task BpSeqretsplitpl {
  command <<<
    bp_seqretsplit_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}