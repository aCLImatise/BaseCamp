version 1.0

task Spadestruseqscfcorrection {
  command <<<
    spades_truseq_scfcorrection
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}