version 1.0

task ArbDnaparsBootstrapSearchdepthViewreportRandomizeTransversionParsThresholdPars {
  input {
    Int? interactiveInteractive
  }
  command <<<
    arb_dnapars bootstrap searchdepth viewreport randomize transversion_pars threshold_pars \
      ~{interactiveInteractive}
  >>>
}