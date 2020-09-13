version 1.0

task Ptoh {
  input {
    Boolean? emulate_domain_
    Boolean? output_sam_format
    Boolean? emulate_local_mode
    Boolean? valuedeletetodelete_transition_probabilities
    Boolean? valueinserttoinsert_transition_probabilities
    Boolean? valuelogarithmic_base_default
    Boolean? fhs_fdi_l
  }
  command <<<
    ptoh \
      ~{if (emulate_domain_) then "-f" else ""} \
      ~{if (output_sam_format) then "-s" else ""} \
      ~{if (emulate_local_mode) then "-F" else ""} \
      ~{if (valuedeletetodelete_transition_probabilities) then "-D" else ""} \
      ~{if (valueinserttoinsert_transition_probabilities) then "-I" else ""} \
      ~{if (valuelogarithmic_base_default) then "-L" else ""} \
      ~{if (fhs_fdi_l) then "-fhsFDIL" else ""}
  >>>
  parameter_meta {
    emulate_domain_: ": emulate domain- or semi-global alignment mode."
    output_sam_format: ": output in SAM format (if not set: HMMER1 format)."
    emulate_local_mode: ": emulate local alignment mode."
    valuedeletetodelete_transition_probabilities: "<value>:\\ndelete-to-delete transition probabilities (default: 0.9)."
    valueinserttoinsert_transition_probabilities: "<value>:\\ninsert-to-insert transition probabilities (default: 0.99)."
    valuelogarithmic_base_default: "<value>:\\nlogarithmic base (default: 1.0233739)."
    fhs_fdi_l: ""
  }
  output {
    File out_stdout = stdout()
  }
}