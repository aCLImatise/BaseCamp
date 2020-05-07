version 1.0

task ArbProtparsViewreport {
  input {
    String? bootstrapBootstrap
    String? geneticGeneticCode
    String? viewViewReport
    String? randomizeRandomize
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_protpars viewreport \
      ~{bootstrapBootstrap} \
      ~{geneticGeneticCode} \
      ~{viewViewReport} \
      ~{randomizeRandomize} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}