version 1.0

task JuicerShortform2pairspl {
  command <<<
    juicer_shortform2pairs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}