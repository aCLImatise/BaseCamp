version 1.0

task Gtop {
  input {
    Boolean? apply_asymmetric_gap
    Boolean? apply_symmetric_gap
    Boolean? impose_limit_line
    Boolean? value_gap_opening
    Boolean? value_gap_extension
    Boolean? value_rescaling_factor
    Boolean? value_output_score
    Boolean? as_lhg_efo
    String gcg_profile
  }
  command <<<
    gtop \
      ~{gcg_profile} \
      ~{true="-a" false="" apply_asymmetric_gap} \
      ~{true="-s" false="" apply_symmetric_gap} \
      ~{true="-l" false="" impose_limit_line} \
      ~{true="-G" false="" value_gap_opening} \
      ~{true="-E" false="" value_gap_extension} \
      ~{true="-F" false="" value_rescaling_factor} \
      ~{true="-O" false="" value_output_score} \
      ~{true="-aslhGEFO" false="" as_lhg_efo}
  >>>
  parameter_meta {
    apply_asymmetric_gap: ": apply asymmetric gap weighting mode."
    apply_symmetric_gap: ": apply symmetric gap weighting mode (default)."
    impose_limit_line: ": do not impose limit on line length."
    value_gap_opening: "<value>: gap opening penalty (default: 4.5)."
    value_gap_extension: "<value>: gap extension penalty (default: 0.05)."
    value_rescaling_factor: "<value>: rescaling factor (default: 100)."
    value_output_score: "<value>: output score offset (default: 0).  Added to match scores after multiplication by the rescaling factor F."
    as_lhg_efo: ""
    gcg_profile: ""
  }
}