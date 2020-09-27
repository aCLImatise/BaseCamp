version 1.0

task Ptof {
  input {
    Boolean? impose_limit_line
    Boolean? parameters_given_normalized
    Boolean? valueminimal_initiationtermination_score
    Boolean? valueframeshift_error_penalty
    Boolean? valueinsert_score_multiplier
    Boolean? valuestop_codon_penalty
    Boolean? valueintron_opening_penalty
    Boolean? valueintron_extension_penalty
    Boolean? hlr_bfi_xyz
  }
  command <<<
    ptof \
      ~{if (impose_limit_line) then "-l" else ""} \
      ~{if (parameters_given_normalized) then "-r" else ""} \
      ~{if (valueminimal_initiationtermination_score) then "-B" else ""} \
      ~{if (valueframeshift_error_penalty) then "-F" else ""} \
      ~{if (valueinsert_score_multiplier) then "-I" else ""} \
      ~{if (valuestop_codon_penalty) then "-X" else ""} \
      ~{if (valueintron_opening_penalty) then "-Y" else ""} \
      ~{if (valueintron_extension_penalty) then "-Z" else ""} \
      ~{if (hlr_bfi_xyz) then "-hlrBFIXYZ" else ""}
  >>>
  parameter_meta {
    impose_limit_line: ": do not impose limit on line length."
    parameters_given_normalized: ": parameters given as normalized score units."
    valueminimal_initiationtermination_score: "<value>:\\nminimal initiation/termination score (default: -50 or -0.5 with option -r)."
    valueframeshift_error_penalty: "<value>:\\nframeshift error penalty (default: -100 or -1.0 with option -r)."
    valueinsert_score_multiplier: "<value>:\\ninsert score multiplier (default: 1/3)."
    valuestop_codon_penalty: "<value>:\\nstop codon penalty (default: -100 or -1.0 with option -r)."
    valueintron_opening_penalty: "<value>:\\nintron opening penalty (default: -300 or -3.0 with option -r)."
    valueintron_extension_penalty: "<value>:\\nintron extension penalty (default: -1 or -0.01 with option -r)."
    hlr_bfi_xyz: ""
  }
  output {
    File out_stdout = stdout()
  }
}