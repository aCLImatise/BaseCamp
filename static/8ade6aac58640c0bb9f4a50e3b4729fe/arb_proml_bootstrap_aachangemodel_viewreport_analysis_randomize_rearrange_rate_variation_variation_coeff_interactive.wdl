version 1.0

task ArbPromlBootstrapAachangemodelViewreportAnalysisRandomizeRearrangeRateVariationVariationCoeffInteractive {
  input {
    String? hmmHmmRates
    String? inInVFraction
    Int? interactiveInteractive
  }
  command <<<
    arb_proml bootstrap aachangemodel viewreport analysis randomize rearrange rate_variation variation_coeff interactive \
      ~{hmmHmmRates} \
      ~{inInVFraction} \
      ~{interactiveInteractive}
  >>>
}