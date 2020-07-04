version 1.0

task Pfscan {
  input {
    Boolean? report_optimal_alignment
    Boolean? search_complementary_strand
    Boolean? input_sequence_file
    Boolean? indicate_highest_number
    Boolean? indicate_highest_text
    Boolean? report_individual_matches
    Boolean? use_raw_score
    Boolean? force_profile_disjointness
    Boolean? value_level_used
    Boolean? value_set_mode
    Boolean? impose_length_limit
    Boolean? output_using_header
    Boolean? list_sequences_matched
    Boolean? suppress_warnings_stderr
    Boolean? list_alignments_psa
    Boolean? list_alignments_human
    Boolean? indicate_profile_start
    Boolean? value_specifies_width
    Boolean? abcdfhllmmkrsuvwxyz
  }
  command <<<
    pfscan \
      ~{true="-a" false="" report_optimal_alignment} \
      ~{true="-b" false="" search_complementary_strand} \
      ~{true="-f" false="" input_sequence_file} \
      ~{true="-l" false="" indicate_highest_number} \
      ~{true="-L" false="" indicate_highest_text} \
      ~{true="-m" false="" report_individual_matches} \
      ~{true="-r" false="" use_raw_score} \
      ~{true="-u" false="" force_profile_disjointness} \
      ~{true="-C" false="" value_level_used} \
      ~{true="-M" false="" value_set_mode} \
      ~{true="-d" false="" impose_length_limit} \
      ~{true="-k" false="" output_using_header} \
      ~{true="-s" false="" list_sequences_matched} \
      ~{true="-v" false="" suppress_warnings_stderr} \
      ~{true="-x" false="" list_alignments_psa} \
      ~{true="-y" false="" list_alignments_human} \
      ~{true="-z" false="" indicate_profile_start} \
      ~{true="-W" false="" value_specifies_width} \
      ~{true="-abCdfhlLmMkrsuvWxyz" false="" abcdfhllmmkrsuvwxyz}
  >>>
  parameter_meta {
    report_optimal_alignment: ": report optimal alignment for all profiles."
    search_complementary_strand: ": search complementary strand of DNA sequences."
    input_sequence_file: ": input sequence file is in FASTA format."
    indicate_highest_number: ": indicate highest cut-off level (number)."
    indicate_highest_text: ": indicate highest cut-off level (text)."
    report_individual_matches: ": report individual matches for circular profiles."
    use_raw_score: ": use raw score."
    force_profile_disjointness: ": force profile disjointness to UNIQUE."
    value_level_used: "<value>: cut-off level to be used for match selection. Same as parameter L."
    value_set_mode: "<value>: set the normalization mode to use for the score computation. Overrides the profile PRIORITY parameter."
    impose_length_limit: ": impose length limit on profile description."
    output_using_header: ": output using the xPSA header (using keyword=value pairs)."
    list_sequences_matched: ": list sequences of the matched regions."
    suppress_warnings_stderr: ": suppress warnings on stderr."
    list_alignments_psa: ": list alignments in PSA format."
    list_alignments_human: ": list alignments in human readable form."
    indicate_profile_start: ": indicate profile start and stop positions."
    value_specifies_width: "<value>: specifies the output width. Same as parameter W."
    abcdfhllmmkrsuvwxyz: ""
  }
}