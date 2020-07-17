version 1.0

task Htop {
  input {
    Boolean? emulate_search_hmmer
    Boolean? force_insert_extension
    Boolean? impose_limit_line
    Boolean? assume_input_hmmer
    Boolean? implement_semiglobal_alignment
    Boolean? value_hmmer_specific_normalization
    Boolean? value_level_zero
    Boolean? value_hmmer_specific_output
    Boolean? value_only_effective
    Boolean? value_hmmer_specific_score
    Boolean? value_number_unprotected
    Boolean? value_percent_profile
    Boolean? value_odds_ratio
    Boolean? fhilosbcfhlmpq
  }
  command <<<
    htop \
      ~{true="-f" false="" emulate_search_hmmer} \
      ~{true="-i" false="" force_insert_extension} \
      ~{true="-l" false="" impose_limit_line} \
      ~{true="-o" false="" assume_input_hmmer} \
      ~{true="-s" false="" implement_semiglobal_alignment} \
      ~{true="-B" false="" value_hmmer_specific_normalization} \
      ~{true="-C" false="" value_level_zero} \
      ~{true="-F" false="" value_hmmer_specific_output} \
      ~{true="-H" false="" value_only_effective} \
      ~{true="-L" false="" value_hmmer_specific_score} \
      ~{true="-M" false="" value_number_unprotected} \
      ~{true="-P" false="" value_percent_profile} \
      ~{true="-Q" false="" value_odds_ratio} \
      ~{true="-fhilosBCFHLMPQ" false="" fhilosbcfhlmpq}
  >>>
  parameter_meta {
    emulate_search_hmmer: ": emulate HMM fragment search (HMMER1 specific)."
    force_insert_extension: ": force insert extension scores to zero."
    impose_limit_line: ": do not impose limit on line length."
    assume_input_hmmer: ": assume input to be HMMER1 format (default: HMMER2)."
    implement_semiglobal_alignment: ": implement semiglobal alignment."
    value_hmmer_specific_normalization: "<value>:     (HMMER1 specific) normalization logarithmic base (default: 2.0)."
    value_level_zero: "<value>: level zero cut-off value (default: 8.5)."
    value_hmmer_specific_output: "<value>:     (HMMER2 specific) output score multiplier (default: 100)."
    value_only_effective: "<value>:     (only effective with option -s) initiation/termination score (default: *)."
    value_hmmer_specific_score: "<value>:     (HMMER1 specific) score logarithmic base (default: 1.0233739)."
    value_number_unprotected: "<value>: number of unprotected residues at end of profile (default: 5)."
    value_percent_profile: "<value>: percent profile length not included in protected area (default: 0)."
    value_odds_ratio: "<value>: odds ratio of unknown residues (default: 0.8)."
    fhilosbcfhlmpq: ""
  }
}