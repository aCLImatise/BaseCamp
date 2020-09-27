version 1.0

task Htop {
  input {
    Boolean? emulate_hmm_fragment
    Boolean? force_insert_scores
    Boolean? impose_limit_line
    Boolean? assume_input_format
    Boolean? implement_semiglobal_alignment
    Boolean? value_hmmer_specificnormalization
    Boolean? valuelevel_zero_cutoff
    Boolean? value_hmmer_specificoutput
    Boolean? value_only_effective
    Boolean? value_hmmer_logarithmic
    Boolean? valuenumber_unprotected_residues
    Boolean? valuepercent_profile_length
    Boolean? valueodds_ratio_unknown
    Boolean? fhilosbcfhlmpq
  }
  command <<<
    htop \
      ~{if (emulate_hmm_fragment) then "-f" else ""} \
      ~{if (force_insert_scores) then "-i" else ""} \
      ~{if (impose_limit_line) then "-l" else ""} \
      ~{if (assume_input_format) then "-o" else ""} \
      ~{if (implement_semiglobal_alignment) then "-s" else ""} \
      ~{if (value_hmmer_specificnormalization) then "-B" else ""} \
      ~{if (valuelevel_zero_cutoff) then "-C" else ""} \
      ~{if (value_hmmer_specificoutput) then "-F" else ""} \
      ~{if (value_only_effective) then "-H" else ""} \
      ~{if (value_hmmer_logarithmic) then "-L" else ""} \
      ~{if (valuenumber_unprotected_residues) then "-M" else ""} \
      ~{if (valuepercent_profile_length) then "-P" else ""} \
      ~{if (valueodds_ratio_unknown) then "-Q" else ""} \
      ~{if (fhilosbcfhlmpq) then "-fhilosBCFHLMPQ" else ""}
  >>>
  parameter_meta {
    emulate_hmm_fragment: ": emulate HMM fragment search (HMMER1 specific)."
    force_insert_scores: ": force insert extension scores to zero."
    impose_limit_line: ": do not impose limit on line length."
    assume_input_format: ": assume input to be HMMER1 format (default: HMMER2)."
    implement_semiglobal_alignment: ": implement semiglobal alignment."
    value_hmmer_specificnormalization: "<value>:     (HMMER1 specific)\\nnormalization logarithmic base (default: 2.0)."
    valuelevel_zero_cutoff: "<value>:\\nlevel zero cut-off value (default: 8.5)."
    value_hmmer_specificoutput: "<value>:     (HMMER2 specific)\\noutput score multiplier (default: 100)."
    value_only_effective: "<value>:     (only effective with option -s)\\ninitiation/termination score (default: *)."
    value_hmmer_logarithmic: "<value>:     (HMMER1 specific)\\nscore logarithmic base (default: 1.0233739)."
    valuenumber_unprotected_residues: "<value>:\\nnumber of unprotected residues at end of profile (default: 5)."
    valuepercent_profile_length: "<value>:\\npercent profile length not included in protected area (default: 0)."
    valueodds_ratio_unknown: "<value>:\\nodds ratio of unknown residues (default: 0.8)."
    fhilosbcfhlmpq: ""
  }
  output {
    File out_stdout = stdout()
  }
}