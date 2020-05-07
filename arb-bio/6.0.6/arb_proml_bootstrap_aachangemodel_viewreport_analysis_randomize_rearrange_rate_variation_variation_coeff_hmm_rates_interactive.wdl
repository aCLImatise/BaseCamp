version 1.0

task ArbPromlBootstrapAachangemodelViewreportAnalysisRandomizeRearrangeRateVariationVariationCoeffHmmRatesInteractive {
  input {
    String? inInVFraction
    Int? interactiveInteractive
  }
  command <<<
    arb_proml bootstrap aachangemodel viewreport analysis randomize rearrange rate_variation variation_coeff hmm_rates interactive \
      ~{inInVFraction} \
      ~{interactiveInteractive}
  >>>
}