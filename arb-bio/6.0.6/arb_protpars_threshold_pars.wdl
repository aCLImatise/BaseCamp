version 1.0

task ArbProtparsThresholdPars {
  input {
    String? bootstrapBootstrap
    String? geneticGeneticCode
    String? viewViewReport
    String? randomizeRandomize
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_protpars threshold_pars \
      ~{bootstrapBootstrap} \
      ~{geneticGeneticCode} \
      ~{viewViewReport} \
      ~{randomizeRandomize} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}