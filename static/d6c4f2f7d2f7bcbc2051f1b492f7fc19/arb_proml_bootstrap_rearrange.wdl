version 1.0

task ArbPromlBootstrapRearrange {
  input {
    String? aaAaChangeModel
    String? viewViewReport
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
    arb_proml bootstrap rearrange \
      ~{aaAaChangeModel} \
      ~{viewViewReport} \
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