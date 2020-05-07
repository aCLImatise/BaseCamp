version 1.0

task ArbPromlBootstrapAachangemodelViewreportAnalysisRandomizeHmmRates {
  input {
    String? rearrangeRearrange
    String? rateRateVariation
    String? variationVariationCoeff
    String? hmmHmmRates
    String? inInVFraction
    Int? interactiveInteractive
  }
  command <<<
    arb_proml bootstrap aachangemodel viewreport analysis randomize hmm_rates \
      ~{rearrangeRearrange} \
      ~{rateRateVariation} \
      ~{variationVariationCoeff} \
      ~{hmmHmmRates} \
      ~{inInVFraction} \
      ~{interactiveInteractive}
  >>>
}