version 1.0

task ArbDnaparsBootstrapSearchdepthViewreportTransversionPars {
  input {
    String? randomizeRandomize
    String? transversionTransversionPars
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_dnapars bootstrap searchdepth viewreport transversion_pars \
      ~{randomizeRandomize} \
      ~{transversionTransversionPars} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}