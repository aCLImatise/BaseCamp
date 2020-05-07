version 1.0

task ArbPromlBootstrapAachangemodelViewreportAnalysisRandomizeRearrangeVariationCoeff {
  input {
    String? rateRateVariation
    String? variationVariationCoeff
    String? hmmHmmRates
    String? inInVFraction
    Int? interactiveInteractive
  }
  command <<<
    arb_proml bootstrap aachangemodel viewreport analysis randomize rearrange variation_coeff \
      ~{rateRateVariation} \
      ~{variationVariationCoeff} \
      ~{hmmHmmRates} \
      ~{inInVFraction} \
      ~{interactiveInteractive}
  >>>
}