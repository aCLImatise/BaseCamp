version 1.0

task ArbPromlBootstrapAachangemodelViewreportAnalysisRandomizeRearrangeRateVariationHmmRates {
  input {
    String? variationVariationCoeff
    String? hmmHmmRates
    String? inInVFraction
    Int? interactiveInteractive
  }
  command <<<
    arb_proml bootstrap aachangemodel viewreport analysis randomize rearrange rate_variation hmm_rates \
      ~{variationVariationCoeff} \
      ~{hmmHmmRates} \
      ~{inInVFraction} \
      ~{interactiveInteractive}
  >>>
}