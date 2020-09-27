version 1.0

task TPSIChainsToFastapl {
  command <<<
    TPSI_chains_to_fasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}