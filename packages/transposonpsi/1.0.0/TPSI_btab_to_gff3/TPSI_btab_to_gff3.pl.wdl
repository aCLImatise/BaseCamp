version 1.0

task TPSIBtabToGff3pl {
  command <<<
    TPSI_btab_to_gff3_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}