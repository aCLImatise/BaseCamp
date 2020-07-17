version 1.0

task Ptof {
  input {
    Boolean? impose_limit_line
    Boolean? parameters_given_normalized
    Boolean? value_minimal_initiationtermination
    Boolean? value_frameshift_error
    Boolean? value_insert_score
    Boolean? value_stop_default
    Boolean? value_intron_default
    Boolean? value_intron_extension
    Boolean? hlr_bfi_xyz
  }
  command <<<
    ptof \
      ~{true="-l" false="" impose_limit_line} \
      ~{true="-r" false="" parameters_given_normalized} \
      ~{true="-B" false="" value_minimal_initiationtermination} \
      ~{true="-F" false="" value_frameshift_error} \
      ~{true="-I" false="" value_insert_score} \
      ~{true="-X" false="" value_stop_default} \
      ~{true="-Y" false="" value_intron_default} \
      ~{true="-Z" false="" value_intron_extension} \
      ~{true="-hlrBFIXYZ" false="" hlr_bfi_xyz}
  >>>
  parameter_meta {
    impose_limit_line: ": do not impose limit on line length."
    parameters_given_normalized: ": parameters given as normalized score units."
    value_minimal_initiationtermination: "<value>: minimal initiation/termination score (default: -50 or -0.5 with option -r)."
    value_frameshift_error: "<value>: frameshift error penalty (default: -100 or -1.0 with option -r)."
    value_insert_score: "<value>: insert score multiplier (default: 1/3)."
    value_stop_default: "<value>: stop codon penalty (default: -100 or -1.0 with option -r)."
    value_intron_default: "<value>: intron opening penalty (default: -300 or -3.0 with option -r)."
    value_intron_extension: "<value>: intron extension penalty (default: -1 or -0.01 with option -r)."
    hlr_bfi_xyz: ""
  }
}