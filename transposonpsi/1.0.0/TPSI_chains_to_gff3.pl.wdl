version 1.0

task TPSIChainsToGff3pl {
  command <<<
    TPSI_chains_to_gff3_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}