version 1.0

task Psa2msa {
  input {
    Boolean? replace_periods_dashes
    Boolean? replace_upper_case_letters
    Boolean? replace_dashes_periods
    Boolean? replace_lower_case_letters
    Boolean? value_maximal_insertion
    Boolean? value_specifies_default
    Boolean? dhl_pum_w
  }
  command <<<
    psa2msa \
      ~{true="-d" false="" replace_periods_dashes} \
      ~{true="-l" false="" replace_upper_case_letters} \
      ~{true="-p" false="" replace_dashes_periods} \
      ~{true="-u" false="" replace_lower_case_letters} \
      ~{true="-M" false="" value_maximal_insertion} \
      ~{true="-W" false="" value_specifies_default} \
      ~{true="-dhlpuMW" false="" dhl_pum_w}
  >>>
  parameter_meta {
    replace_periods_dashes: ": replace periods by dashes on output."
    replace_upper_case_letters: ": replace upper case letters by lower case."
    replace_dashes_periods: ": replace dashes by periods on output."
    replace_lower_case_letters: ": replace lower case letters by upper case."
    value_maximal_insertion: "<value>: maximal insertion length (default: -1)."
    value_specifies_default: "<value>: specifies the output width (default: 60)."
    dhl_pum_w: ""
  }
}