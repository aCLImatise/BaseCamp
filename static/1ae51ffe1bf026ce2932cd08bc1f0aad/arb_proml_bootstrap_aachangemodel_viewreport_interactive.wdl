version 1.0

task ArbPromlBootstrapAachangemodelViewreportInteractive {
  input {
    String? analysisAnalysis
    String? randomizeRandomize
    String? rearrangeRearrange
    String? rateRateVariation
    String? variationVariationCoeff
    String? hmmHmmRates
    String? inInVFraction
    Int? interactiveInteractive
  }
  command <<<
    arb_proml bootstrap aachangemodel viewreport interactive \
      ~{analysisAnalysis} \
      ~{randomizeRandomize} \
      ~{rearrangeRearrange} \
      ~{rateRateVariation} \
      ~{variationVariationCoeff} \
      ~{hmmHmmRates} \
      ~{inInVFraction} \
      ~{interactiveInteractive}
  >>>
}