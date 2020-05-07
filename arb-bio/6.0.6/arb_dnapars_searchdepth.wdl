version 1.0

task ArbDnaparsSearchdepth {
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
    arb_dnapars searchdepth \
      ~{bootstrapBootstrap} \
      ~{searchSearchDepth} \
      ~{viewViewReport} \
      ~{randomizeRandomize} \
      ~{transversionTransversionPars} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}