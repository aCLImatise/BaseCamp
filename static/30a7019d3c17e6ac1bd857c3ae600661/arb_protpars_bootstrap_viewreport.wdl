version 1.0

task ArbProtparsBootstrapViewreport {
  input {
    String? geneticGeneticCode
    String? viewViewReport
    String? randomizeRandomize
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_protpars bootstrap viewreport \
      ~{geneticGeneticCode} \
      ~{viewViewReport} \
      ~{randomizeRandomize} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}