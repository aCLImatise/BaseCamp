version 1.0

task ArbProtparsBootstrapGeneticcodeViewreportThresholdPars {
  input {
    String? randomizeRandomize
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_protpars bootstrap geneticcode viewreport threshold_pars \
      ~{randomizeRandomize} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}