version 1.0

task Gtop {
  input {
    Boolean? apply_weighting_mode
    Boolean? apply_weighting_default
    Boolean? impose_limit_line
    Boolean? valuegap_opening_penalty
    Boolean? valuegap_extension_penalty
    Boolean? valuerescaling_factor_default
    Boolean? valueoutput_offset_default
    Boolean? as_lhg_efo
    String gcg_profile
  }
  command <<<
    gtop \
      ~{gcg_profile} \
      ~{if (apply_weighting_mode) then "-a" else ""} \
      ~{if (apply_weighting_default) then "-s" else ""} \
      ~{if (impose_limit_line) then "-l" else ""} \
      ~{if (valuegap_opening_penalty) then "-G" else ""} \
      ~{if (valuegap_extension_penalty) then "-E" else ""} \
      ~{if (valuerescaling_factor_default) then "-F" else ""} \
      ~{if (valueoutput_offset_default) then "-O" else ""} \
      ~{if (as_lhg_efo) then "-aslhGEFO" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    apply_weighting_mode: ": apply asymmetric gap weighting mode."
    apply_weighting_default: ": apply symmetric gap weighting mode (default)."
    impose_limit_line: ": do not impose limit on line length."
    valuegap_opening_penalty: "<value>:\\ngap opening penalty (default: 4.5)."
    valuegap_extension_penalty: "<value>:\\ngap extension penalty (default: 0.05)."
    valuerescaling_factor_default: "<value>:\\nrescaling factor (default: 100)."
    valueoutput_offset_default: "<value>:\\noutput score offset (default: 0).\\nAdded to match scores after multiplication by the rescaling factor F."
    as_lhg_efo: ""
    gcg_profile: ""
  }
  output {
    File out_stdout = stdout()
  }
}