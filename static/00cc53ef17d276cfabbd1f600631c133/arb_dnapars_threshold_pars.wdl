version 1.0

task ArbDnaparsThresholdPars {
  input {
    String? bootstrapBootstrap
    String? searchSearchDepth
    String? viewViewReport
    String? randomizeRandomize
    String? transversionTransversionPars
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_dnapars threshold_pars \
      ~{bootstrapBootstrap} \
      ~{searchSearchDepth} \
      ~{viewViewReport} \
      ~{randomizeRandomize} \
      ~{transversionTransversionPars} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}