version 1.0

task BpSeqretpl {
  command <<<
    bp_seqret_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}