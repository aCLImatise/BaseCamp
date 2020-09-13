version 1.0

task Psa2msa {
  input {
    Boolean? replace_periods_dashes
    Boolean? replace_upper_case_letters
    Boolean? replace_dashes_periods
    Boolean? replace_lower_case_letters
    Boolean? valuemaximal_insertion_length
    Boolean? valuespecifies_width_default
    Boolean? dhl_pum_w
  }
  command <<<
    psa2msa \
      ~{if (replace_periods_dashes) then "-d" else ""} \
      ~{if (replace_upper_case_letters) then "-l" else ""} \
      ~{if (replace_dashes_periods) then "-p" else ""} \
      ~{if (replace_lower_case_letters) then "-u" else ""} \
      ~{if (valuemaximal_insertion_length) then "-M" else ""} \
      ~{if (valuespecifies_width_default) then "-W" else ""} \
      ~{if (dhl_pum_w) then "-dhlpuMW" else ""}
  >>>
  parameter_meta {
    replace_periods_dashes: ": replace periods by dashes on output."
    replace_upper_case_letters: ": replace upper case letters by lower case."
    replace_dashes_periods: ": replace dashes by periods on output."
    replace_lower_case_letters: ": replace lower case letters by upper case."
    valuemaximal_insertion_length: "<value>:\\nmaximal insertion length (default: -1)."
    valuespecifies_width_default: "<value>:\\nspecifies the output width (default: 60)."
    dhl_pum_w: ""
  }
  output {
    File out_stdout = stdout()
  }
}