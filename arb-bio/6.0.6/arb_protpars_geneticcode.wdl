version 1.0

task ArbProtparsGeneticcode {
  input {
    String? bootstrapBootstrap
    String? geneticGeneticCode
    String? viewViewReport
    String? randomizeRandomize
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_protpars geneticcode \
      ~{bootstrapBootstrap} \
      ~{geneticGeneticCode} \
      ~{viewViewReport} \
      ~{randomizeRandomize} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}