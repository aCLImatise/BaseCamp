version 1.0

task ArbDnaparsBootstrapRandomize {
  input {
    String? searchSearchDepth
    String? viewViewReport
    String? randomizeRandomize
    String? transversionTransversionPars
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_dnapars bootstrap randomize \
      ~{searchSearchDepth} \
      ~{viewViewReport} \
      ~{randomizeRandomize} \
      ~{transversionTransversionPars} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}