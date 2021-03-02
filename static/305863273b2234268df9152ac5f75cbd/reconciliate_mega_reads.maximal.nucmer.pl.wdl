version 1.0

task ReconciliateMegaReadsmaximalnucmerpl {
  command <<<
    reconciliate_mega_reads_maximal_nucmer_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}