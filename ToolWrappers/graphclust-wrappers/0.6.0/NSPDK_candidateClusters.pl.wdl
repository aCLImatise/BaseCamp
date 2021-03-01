version 1.0

task NSPDKCandidateClusterspl {
  command <<<
    NSPDK_candidateClusters_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}