version 1.0

task Spadestruseqscfcorrection {
  command <<<
    spades_truseq_scfcorrection
  >>>
  output {
    File out_stdout = stdout()
  }
}