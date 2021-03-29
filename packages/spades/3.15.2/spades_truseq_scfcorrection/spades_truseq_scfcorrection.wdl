version 1.0

task Spadestruseqscfcorrection {
  command <<<
    spades_truseq_scfcorrection
  >>>
  runtime {
    docker: "quay.io/biocontainers/spades:3.15.2--h633aebb_0"
  }
  output {
    File out_stdout = stdout()
  }
}