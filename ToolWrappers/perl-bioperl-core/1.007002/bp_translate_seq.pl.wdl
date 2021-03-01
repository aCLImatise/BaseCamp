version 1.0

task BpTranslateSeqpl {
  command <<<
    bp_translate_seq_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}