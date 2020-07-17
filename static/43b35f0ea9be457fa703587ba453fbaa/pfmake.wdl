version 1.0

task Pfmake {
  input {
    Boolean? global_alignment_mode
    Boolean? domain_global_alignment
    Boolean? semiglobal_alignment_mode
    Boolean? local_alignment_mode
    Boolean? asymmetrical_gap_weighting
    Boolean? block_profile_mode
    Boolean? _circular_profile
    Boolean? enable_endgapweighting_mode
    Boolean? input_sequences_msa
    Boolean? impose_limit_line
    Boolean? symmetrical_gap_weighting
    Boolean? value_gap_extension
    Boolean? value_output_score
    Boolean? value_gap_opening
    Boolean? value_high_cost
    Boolean? value_gap_penalty
    Boolean? value_low_cost
    Boolean? value_maximum_gap
    Boolean? value_score_matrix
    Boolean? value_gap_region
    Boolean? value_gap_excision
    Boolean? zero_one_two_three_abcehlsefghilmstx
  }
  command <<<
    pfmake \
      ~{true="-0" false="" global_alignment_mode} \
      ~{true="-1" false="" domain_global_alignment} \
      ~{true="-2" false="" semiglobal_alignment_mode} \
      ~{true="-3" false="" local_alignment_mode} \
      ~{true="-a" false="" asymmetrical_gap_weighting} \
      ~{true="-b" false="" block_profile_mode} \
      ~{true="-c" false="" _circular_profile} \
      ~{true="-e" false="" enable_endgapweighting_mode} \
      ~{true="-m" false="" input_sequences_msa} \
      ~{true="-l" false="" impose_limit_line} \
      ~{true="-s" false="" symmetrical_gap_weighting} \
      ~{true="-E" false="" value_gap_extension} \
      ~{true="-F" false="" value_output_score} \
      ~{true="-G" false="" value_gap_opening} \
      ~{true="-H" false="" value_high_cost} \
      ~{true="-I" false="" value_gap_penalty} \
      ~{true="-L" false="" value_low_cost} \
      ~{true="-M" false="" value_maximum_gap} \
      ~{true="-S" false="" value_score_matrix} \
      ~{true="-T" false="" value_gap_region} \
      ~{true="-X" false="" value_gap_excision} \
      ~{true="-0123abcehlsEFGHILMSTX" false="" zero_one_two_three_abcehlsefghilmstx}
  >>>
  parameter_meta {
    global_alignment_mode: ": global alignment mode."
    domain_global_alignment: ": domain global alignment mode."
    semiglobal_alignment_mode: ": semi-global alignment mode."
    local_alignment_mode: ": local alignment mode."
    asymmetrical_gap_weighting: ": asymmetrical gap weighting."
    block_profile_mode: ": block profile mode."
    _circular_profile: ": circular profile."
    enable_endgapweighting_mode: ": enable endgap-weighting mode."
    input_sequences_msa: ": input sequences in MSA format."
    impose_limit_line: ": do not impose limit on line length."
    symmetrical_gap_weighting: ": symmetrical gap weighting."
    value_gap_extension: "<value>: gap extension penalty (default: 0.2)."
    value_output_score: "<value>: output score multiplier (default: 100)"
    value_gap_opening: "<value>: gap opening penalty (default: 2.1)"
    value_high_cost: "<value>: high cost initiation/termination score (default: *)"
    value_gap_penalty: "<value>: gap penalty multiplier increment (default: 0.1)"
    value_low_cost: "<value>: low cost initiation/termination score (default:  0)."
    value_maximum_gap: "<value>: maximum gap penalty multiplier (default: 0.333)."
    value_score_matrix: "<value>: score matrix multiplier (default: 0.1)"
    value_gap_region: "<value>: gap region threshold (default: 0.01)"
    value_gap_excision: "<value>: gap excision threshold (default: 0.5)"
    zero_one_two_three_abcehlsefghilmstx: ""
  }
}