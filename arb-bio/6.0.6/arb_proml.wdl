version 1.0

task ArbProml {
  input {
    String bootstrap
    String aa_change_model
    String view_report
    String analysis
    String randomize
    String rearrange
    String rate_variation
    String variation_coeff
    String hmm_rates
    String in_v_fraction
    Int interactive
  }
  command <<<
    arb_proml \
      ~{bootstrap} \
      ~{aa_change_model} \
      ~{view_report} \
      ~{analysis} \
      ~{randomize} \
      ~{rearrange} \
      ~{rate_variation} \
      ~{variation_coeff} \
      ~{hmm_rates} \
      ~{in_v_fraction} \
      ~{interactive}
  >>>
  parameter_meta {
    bootstrap: ""
    aa_change_model: ""
    view_report: ""
    analysis: ""
    randomize: ""
    rearrange: ""
    rate_variation: ""
    variation_coeff: ""
    hmm_rates: ""
    in_v_fraction: ""
    interactive: ""
  }
}