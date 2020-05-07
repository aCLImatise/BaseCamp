version 1.0

task ArbDnaparsBootstrapSearchdepthViewreportRandomizeTransversionParsInteractive {
  input {
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_dnapars bootstrap searchdepth viewreport randomize transversion_pars interactive \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}