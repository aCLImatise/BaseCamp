version 1.0

task Bl2seq {
  input {
    Boolean? first_sequence
    Boolean? second_sequence
    Boolean? program_name_blastp
    Boolean? gapped_default_t
    File? alignment_output_file
    Boolean? theor_db_size
    File? text_asn_output
    Boolean? cost_open_gap
    Boolean? cost_extend_gap
    Boolean? x_dropoff_value
    Boolean? word_size_default
    Boolean? matrix_default_blosum
    Boolean? penalty_nucleotide_mismatch
    Boolean? reward_nucleotide_match
    Boolean? filter_query_sequence
    Boolean? expectation_value_e
    Boolean? query_strands_search
    Boolean? produce_html_output
    Boolean? use_mega_blast
    Boolean? effective_length_search
    Boolean? length_largest_intron
    Boolean? location_first_optional
    Boolean? location_second_optional
    Boolean? output_format_traditional
    Boolean? use_lower_case
    Boolean? input_sequences_f
    Boolean? force_use_legacy
  }
  command <<<
    bl2seq \
      ~{if (first_sequence) then "-i" else ""} \
      ~{if (second_sequence) then "-j" else ""} \
      ~{if (program_name_blastp) then "-p" else ""} \
      ~{if (gapped_default_t) then "-g" else ""} \
      ~{if (alignment_output_file) then "-o" else ""} \
      ~{if (theor_db_size) then "-d" else ""} \
      ~{if (text_asn_output) then "-a" else ""} \
      ~{if (cost_open_gap) then "-G" else ""} \
      ~{if (cost_extend_gap) then "-E" else ""} \
      ~{if (x_dropoff_value) then "-X" else ""} \
      ~{if (word_size_default) then "-W" else ""} \
      ~{if (matrix_default_blosum) then "-M" else ""} \
      ~{if (penalty_nucleotide_mismatch) then "-q" else ""} \
      ~{if (reward_nucleotide_match) then "-r" else ""} \
      ~{if (filter_query_sequence) then "-F" else ""} \
      ~{if (expectation_value_e) then "-e" else ""} \
      ~{if (query_strands_search) then "-S" else ""} \
      ~{if (produce_html_output) then "-T" else ""} \
      ~{if (use_mega_blast) then "-m" else ""} \
      ~{if (effective_length_search) then "-Y" else ""} \
      ~{if (length_largest_intron) then "-t" else ""} \
      ~{if (location_first_optional) then "-I" else ""} \
      ~{if (location_second_optional) then "-J" else ""} \
      ~{if (output_format_traditional) then "-D" else ""} \
      ~{if (use_lower_case) then "-U" else ""} \
      ~{if (input_sequences_f) then "-A" else ""} \
      ~{if (force_use_legacy) then "-V" else ""}
  >>>
  parameter_meta {
    first_sequence: "First sequence [File In]"
    second_sequence: "Second sequence [File In]"
    program_name_blastp: "Program name: blastp, blastn, blastx, tblastn, tblastx. For blastx 1st sequence should be nucleotide, tblastn 2nd sequence nucleotide [String]"
    gapped_default_t: "Gapped [T/F]\\ndefault = T"
    alignment_output_file: "alignment output file [File Out]\\ndefault = stdout"
    theor_db_size: "theor. db size (zero is real size) [Real]\\ndefault = 0"
    text_asn_output: "Text ASN.1 output file [File Out]  Optional"
    cost_open_gap: "Cost to open a gap (-1 invokes default behavior) [Integer]\\ndefault = -1"
    cost_extend_gap: "Cost to extend a gap (-1 invokes default behavior) [Integer]\\ndefault = -1"
    x_dropoff_value: "X dropoff value for gapped alignment (in bits) (zero invokes default behavior)\\nblastn 30, megablast 20, tblastx 0, all others 15 [Integer]\\ndefault = 0"
    word_size_default: "Word size, default if zero (blastn 11, megablast 28, all others 3) [Integer]\\ndefault = 0"
    matrix_default_blosum: "Matrix [String]\\ndefault = BLOSUM62"
    penalty_nucleotide_mismatch: "Penalty for a nucleotide mismatch (blastn only) [Integer]\\ndefault = -3"
    reward_nucleotide_match: "Reward for a nucleotide match (blastn only) [Integer]\\ndefault = 1"
    filter_query_sequence: "Filter query sequence (DUST with blastn, SEG with others) [String]\\ndefault = T"
    expectation_value_e: "Expectation value (E) [Real]\\ndefault = 10.0"
    query_strands_search: "Query strands to search against database (blastn only).  3 is both, 1 is top, 2 is bottom [Integer]\\ndefault = 3"
    produce_html_output: "Produce HTML output [T/F]\\ndefault = F"
    use_mega_blast: "Use Mega Blast for search [T/F]  Optional\\ndefault = F"
    effective_length_search: "Effective length of the search space (use zero for the real size) [Real]\\ndefault = 0"
    length_largest_intron: "Length of the largest intron allowed in tblastn for linking HSPs [Integer]\\ndefault = 0"
    location_first_optional: "Location on first sequence [String]  Optional"
    location_second_optional: "Location on second sequence [String]  Optional"
    output_format_traditional: "Output format: 0 - traditional, 1 - tabular [Integer]\\ndefault = 0"
    use_lower_case: "Use lower case filtering for the query sequence [T/F]  Optional\\ndefault = F"
    input_sequences_f: "Input sequences in the form of accession.version [T/F]\\ndefault = F"
    force_use_legacy: "Force use of the legacy BLAST engine [T/F]  Optional\\ndefault = F\\n"
  }
  output {
    File out_stdout = stdout()
    File out_alignment_output_file = "${in_alignment_output_file}"
    File out_text_asn_output = "${in_text_asn_output}"
  }
}