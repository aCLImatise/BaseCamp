version 1.0

task Ptoh {
  input {
    Boolean? emulate_domain_
    Boolean? output_set_format
    Boolean? emulate_local_mode
    Boolean? value_deletetodelete_transition
    Boolean? value_inserttoinsert_transition
    Boolean? value_logarithmic_base
    Boolean? fhs_fdi_l
  }
  command <<<
    ptoh \
      ~{true="-f" false="" emulate_domain_} \
      ~{true="-s" false="" output_set_format} \
      ~{true="-F" false="" emulate_local_mode} \
      ~{true="-D" false="" value_deletetodelete_transition} \
      ~{true="-I" false="" value_inserttoinsert_transition} \
      ~{true="-L" false="" value_logarithmic_base} \
      ~{true="-fhsFDIL" false="" fhs_fdi_l}
  >>>
  parameter_meta {
    emulate_domain_: ": emulate domain- or semi-global alignment mode."
    output_set_format: ": output in SAM format (if not set: HMMER1 format)."
    emulate_local_mode: ": emulate local alignment mode."
    value_deletetodelete_transition: "<value>: delete-to-delete transition probabilities (default: 0.9)."
    value_inserttoinsert_transition: "<value>: insert-to-insert transition probabilities (default: 0.99)."
    value_logarithmic_base: "<value>: logarithmic base (default: 1.0233739)."
    fhs_fdi_l: ""
  }
}