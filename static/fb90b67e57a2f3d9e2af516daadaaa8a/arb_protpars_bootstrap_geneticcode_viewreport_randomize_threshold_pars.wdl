version 1.0

task ArbProtparsBootstrapGeneticcodeViewreportRandomizeThresholdPars {
  input {
    Int? interactiveInteractive
  }
  command <<<
    arb_protpars bootstrap geneticcode viewreport randomize threshold_pars \
      ~{interactiveInteractive}
  >>>
}