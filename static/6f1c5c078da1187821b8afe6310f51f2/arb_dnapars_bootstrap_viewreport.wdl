version 1.0

task ArbDnaparsBootstrapViewreport {
  input {
    String? searchSearchDepth
    String? viewViewReport
    String? randomizeRandomize
    String? transversionTransversionPars
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_dnapars bootstrap viewreport \
      ~{searchSearchDepth} \
      ~{viewViewReport} \
      ~{randomizeRandomize} \
      ~{transversionTransversionPars} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}