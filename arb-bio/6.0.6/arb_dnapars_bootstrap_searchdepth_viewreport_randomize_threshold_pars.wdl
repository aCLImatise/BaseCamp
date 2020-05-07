version 1.0

task ArbDnaparsBootstrapSearchdepthViewreportRandomizeThresholdPars {
  input {
    String? transversionTransversionPars
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_dnapars bootstrap searchdepth viewreport randomize threshold_pars \
      ~{transversionTransversionPars} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}