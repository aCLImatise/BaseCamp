version 1.0

task ArbDnaparsBootstrapSearchdepthRandomize {
  input {
    String? viewViewReport
    String? randomizeRandomize
    String? transversionTransversionPars
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_dnapars bootstrap searchdepth randomize \
      ~{viewViewReport} \
      ~{randomizeRandomize} \
      ~{transversionTransversionPars} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}