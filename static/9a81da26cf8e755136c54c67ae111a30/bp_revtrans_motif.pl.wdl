version 1.0

task BpRevtransmotifpl {
  command <<<
    bp_revtrans_motif_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}