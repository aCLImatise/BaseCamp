version 1.0

task ArbPromlBootstrapAachangemodelViewreportAnalysisRandomizeRearrangeRateVariationVariationCoeffHmmRatesInvFraction {
  input {
    Int? interactiveInteractive
  }
  command <<<
    arb_proml bootstrap aachangemodel viewreport analysis randomize rearrange rate_variation variation_coeff hmm_rates inv_fraction \
      ~{interactiveInteractive}
  >>>
}