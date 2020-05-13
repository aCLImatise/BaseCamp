version 1.0

task ArbProtparsBootstrapGeneticcodeViewreportRandomizeInteractive {
  input {
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_protpars bootstrap geneticcode viewreport randomize interactive \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}