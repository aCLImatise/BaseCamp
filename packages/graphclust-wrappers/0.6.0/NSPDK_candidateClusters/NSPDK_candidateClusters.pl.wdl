version 1.0

task NSPDKCandidateClusterspl {
  command <<<
    NSPDK_candidateClusters_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}