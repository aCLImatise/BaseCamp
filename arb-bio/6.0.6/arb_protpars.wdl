version 1.0

task ArbProtpars {
  input {
    String bootstrap
    String genetic_code
    String view_report
    String randomize
    String threshold_pars
    Int interactive
  }
  command <<<
    arb_protpars \
      ~{bootstrap} \
      ~{genetic_code} \
      ~{view_report} \
      ~{randomize} \
      ~{threshold_pars} \
      ~{interactive}
  >>>
  parameter_meta {
    bootstrap: ""
    genetic_code: ""
    view_report: ""
    randomize: ""
    threshold_pars: ""
    interactive: ""
  }
}