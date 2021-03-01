version 1.0

task TPSIChainsToGff3pl {
  command <<<
    TPSI_chains_to_gff3_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}