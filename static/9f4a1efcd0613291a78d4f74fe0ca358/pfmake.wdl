version 1.0

task Pfmake {
  input {
    Boolean? global_alignment_mode
    Boolean? domain_global_mode
    Boolean? semiglobal_alignment_mode
    Boolean? local_alignment_mode
    Boolean? asymmetrical_gap_weighting
    Boolean? block_profile_mode
    Boolean? _circular_profile
    Boolean? enable_endgapweighting_mode
    Boolean? input_sequences_msa
    Boolean? impose_limit_line
    Boolean? symmetrical_gap_weighting
    Boolean? valuegap_extension_penalty
    Boolean? valueoutput_score_default
    Boolean? valuegap_opening_penalty
    Boolean? valuehigh_cost_initiationtermination
    Boolean? valuegap_penalty_multiplier
    Boolean? valuelow_cost_initiationtermination
    Boolean? valuemaximum_gap_penalty
    Boolean? valuescore_matrix_multiplier
    Boolean? valuegap_region_threshold
    Boolean? valuegap_excision_threshold
    Boolean? zero_one_two_three_abcehlsefghilmstx
  }
  command <<<
    pfmake \
      ~{if (global_alignment_mode) then "-0" else ""} \
      ~{if (domain_global_mode) then "-1" else ""} \
      ~{if (semiglobal_alignment_mode) then "-2" else ""} \
      ~{if (local_alignment_mode) then "-3" else ""} \
      ~{if (asymmetrical_gap_weighting) then "-a" else ""} \
      ~{if (block_profile_mode) then "-b" else ""} \
      ~{if (_circular_profile) then "-c" else ""} \
      ~{if (enable_endgapweighting_mode) then "-e" else ""} \
      ~{if (input_sequences_msa) then "-m" else ""} \
      ~{if (impose_limit_line) then "-l" else ""} \
      ~{if (symmetrical_gap_weighting) then "-s" else ""} \
      ~{if (valuegap_extension_penalty) then "-E" else ""} \
      ~{if (valueoutput_score_default) then "-F" else ""} \
      ~{if (valuegap_opening_penalty) then "-G" else ""} \
      ~{if (valuehigh_cost_initiationtermination) then "-H" else ""} \
      ~{if (valuegap_penalty_multiplier) then "-I" else ""} \
      ~{if (valuelow_cost_initiationtermination) then "-L" else ""} \
      ~{if (valuemaximum_gap_penalty) then "-M" else ""} \
      ~{if (valuescore_matrix_multiplier) then "-S" else ""} \
      ~{if (valuegap_region_threshold) then "-T" else ""} \
      ~{if (valuegap_excision_threshold) then "-X" else ""} \
      ~{if (zero_one_two_three_abcehlsefghilmstx) then "-0123abcehlsEFGHILMSTX" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    global_alignment_mode: ": global alignment mode."
    domain_global_mode: ": domain global alignment mode."
    semiglobal_alignment_mode: ": semi-global alignment mode."
    local_alignment_mode: ": local alignment mode."
    asymmetrical_gap_weighting: ": asymmetrical gap weighting."
    block_profile_mode: ": block profile mode."
    _circular_profile: ": circular profile."
    enable_endgapweighting_mode: ": enable endgap-weighting mode."
    input_sequences_msa: ": input sequences in MSA format."
    impose_limit_line: ": do not impose limit on line length."
    symmetrical_gap_weighting: ": symmetrical gap weighting."
    valuegap_extension_penalty: "<value>:\\ngap extension penalty (default: 0.2)."
    valueoutput_score_default: "<value>:\\noutput score multiplier (default: 100)"
    valuegap_opening_penalty: "<value>:\\ngap opening penalty (default: 2.1)"
    valuehigh_cost_initiationtermination: "<value>:\\nhigh cost initiation/termination score (default: *)"
    valuegap_penalty_multiplier: "<value>:\\ngap penalty multiplier increment (default: 0.1)"
    valuelow_cost_initiationtermination: "<value>:\\nlow cost initiation/termination score (default:  0)."
    valuemaximum_gap_penalty: "<value>:\\nmaximum gap penalty multiplier (default: 0.333)."
    valuescore_matrix_multiplier: "<value>:\\nscore matrix multiplier (default: 0.1)"
    valuegap_region_threshold: "<value>:\\ngap region threshold (default: 0.01)"
    valuegap_excision_threshold: "<value>:\\ngap excision threshold (default: 0.5)"
    zero_one_two_three_abcehlsefghilmstx: ""
  }
  output {
    File out_stdout = stdout()
  }
}