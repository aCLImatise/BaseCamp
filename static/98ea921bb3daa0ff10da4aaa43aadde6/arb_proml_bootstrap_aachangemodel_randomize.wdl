version 1.0

task ArbPromlBootstrapAachangemodelRandomize {
  input {
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
    arb_proml bootstrap aachangemodel randomize \
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