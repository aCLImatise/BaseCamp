version 1.0

task ArbProtparsInteractive {
  input {
    String? bootstrapBootstrap
    String? geneticGeneticCode
    String? viewViewReport
    String? randomizeRandomize
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_protpars interactive \
      ~{bootstrapBootstrap} \
      ~{geneticGeneticCode} \
      ~{viewViewReport} \
      ~{randomizeRandomize} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}