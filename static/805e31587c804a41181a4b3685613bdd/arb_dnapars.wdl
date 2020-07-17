version 1.0

task ArbDnapars {
  input {
    String bootstrap
    String search_depth
    String view_report
    String randomize
    String transversion_pars
    String threshold_pars
    Int interactive
  }
  command <<<
    arb_dnapars \
      ~{bootstrap} \
      ~{search_depth} \
      ~{view_report} \
      ~{randomize} \
      ~{transversion_pars} \
      ~{threshold_pars} \
      ~{interactive}
  >>>
  parameter_meta {
    bootstrap: ""
    search_depth: ""
    view_report: ""
    randomize: ""
    transversion_pars: ""
    threshold_pars: ""
    interactive: ""
  }
}