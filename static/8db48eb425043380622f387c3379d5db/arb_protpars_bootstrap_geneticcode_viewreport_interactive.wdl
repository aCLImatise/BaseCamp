version 1.0

task ArbProtparsBootstrapGeneticcodeViewreportInteractive {
  input {
    String? randomizeRandomize
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_protpars bootstrap geneticcode viewreport interactive \
      ~{randomizeRandomize} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}