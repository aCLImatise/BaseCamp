version 1.0

task ArbPromlRearrange {
  input {
    String? bootstrapBootstrap
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
    arb_proml rearrange \
      ~{bootstrapBootstrap} \
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