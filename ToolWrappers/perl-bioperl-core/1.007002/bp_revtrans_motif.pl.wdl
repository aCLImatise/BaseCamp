version 1.0

task BpRevtransmotifpl {
  command <<<
    bp_revtrans_motif_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}