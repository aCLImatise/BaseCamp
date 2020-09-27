version 1.0

task JuicerShortform2pairspl {
  command <<<
    juicer_shortform2pairs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}