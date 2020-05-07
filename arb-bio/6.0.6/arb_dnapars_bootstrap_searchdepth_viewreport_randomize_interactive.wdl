version 1.0

task ArbDnaparsBootstrapSearchdepthViewreportRandomizeInteractive {
  input {
    String? transversionTransversionPars
    String? thresholdThresholdPars
    Int? interactiveInteractive
  }
  command <<<
    arb_dnapars bootstrap searchdepth viewreport randomize interactive \
      ~{transversionTransversionPars} \
      ~{thresholdThresholdPars} \
      ~{interactiveInteractive}
  >>>
}