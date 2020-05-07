version 1.0

task ArbProtparsBootstrapGeneticcodeThresholdPars {
  input {
    String? viewViewReport
    String? randomizeRandomize
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_protpars bootstrap geneticcode threshold_pars \
      ~{viewViewReport} \
      ~{randomizeRandomize} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}