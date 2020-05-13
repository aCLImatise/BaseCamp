version 1.0

task ArbPromlBootstrapAachangemodelViewreportAnalysisRandomizeRearrangeRateVariationVariationCoeffInvFraction {
  input {
    String? hmmHmmRates
    String? inInVFraction
    Int? interactiveInteractive
  }
  command <<<
    arb_proml bootstrap aachangemodel viewreport analysis randomize rearrange rate_variation variation_coeff inv_fraction \
      ~{hmmHmmRates} \
      ~{inInVFraction} \
      ~{interactiveInteractive}
  >>>
}