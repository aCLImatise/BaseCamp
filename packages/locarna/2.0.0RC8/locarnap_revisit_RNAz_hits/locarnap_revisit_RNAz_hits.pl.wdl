version 1.0

task LocarnaprevisitRNAzhitspl {
  command <<<
    locarnap_revisit_RNAz_hits_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}