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
    Boolean? valuecutoff_level_used
    Boolean? valueset_normalization_mode
    Boolean? impose_length_limit
    Boolean? output_using_header
    Boolean? list_sequences_matched
    Boolean? suppress_warnings_stderr
    Boolean? list_alignments_psa
    Boolean? list_alignments_human
    Boolean? indicate_profile_start
    Boolean? valuespecifies_output_width
    Boolean? abcdfhllmmkrsuvwxyz
  }
  command <<<
    pfscan \
      ~{if (report_optimal_alignment) then "-a" else ""} \
      ~{if (search_complementary_strand) then "-b" else ""} \
      ~{if (input_sequence_file) then "-f" else ""} \
      ~{if (indicate_highest_number) then "-l" else ""} \
      ~{if (indicate_highest_text) then "-L" else ""} \
      ~{if (report_individual_matches) then "-m" else ""} \
      ~{if (use_raw_score) then "-r" else ""} \
      ~{if (force_profile_disjointness) then "-u" else ""} \
      ~{if (valuecutoff_level_used) then "-C" else ""} \
      ~{if (valueset_normalization_mode) then "-M" else ""} \
      ~{if (impose_length_limit) then "-d" else ""} \
      ~{if (output_using_header) then "-k" else ""} \
      ~{if (list_sequences_matched) then "-s" else ""} \
      ~{if (suppress_warnings_stderr) then "-v" else ""} \
      ~{if (list_alignments_psa) then "-x" else ""} \
      ~{if (list_alignments_human) then "-y" else ""} \
      ~{if (indicate_profile_start) then "-z" else ""} \
      ~{if (valuespecifies_output_width) then "-W" else ""} \
      ~{if (abcdfhllmmkrsuvwxyz) then "-abCdfhlLmMkrsuvWxyz" else ""}
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
    valuecutoff_level_used: "<value>:\\ncut-off level to be used for match selection. Same as parameter L."
    valueset_normalization_mode: "<value>:\\nset the normalization mode to use for the score computation.\\nOverrides the profile PRIORITY parameter."
    impose_length_limit: ": impose length limit on profile description."
    output_using_header: ": output using the xPSA header (using keyword=value pairs)."
    list_sequences_matched: ": list sequences of the matched regions."
    suppress_warnings_stderr: ": suppress warnings on stderr."
    list_alignments_psa: ": list alignments in PSA format."
    list_alignments_human: ": list alignments in human readable form."
    indicate_profile_start: ": indicate profile start and stop positions."
    valuespecifies_output_width: "<value>:\\nspecifies the output width. Same as parameter W."
    abcdfhllmmkrsuvwxyz: ""
  }
  output {
    File out_stdout = stdout()
  }
}