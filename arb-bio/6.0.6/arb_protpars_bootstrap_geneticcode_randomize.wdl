version 1.0

task ArbProtparsBootstrapGeneticcodeRandomize {
  input {
    String? viewViewReport
    String? randomizeRandomize
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_protpars bootstrap geneticcode randomize \
      ~{viewViewReport} \
      ~{randomizeRandomize} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}