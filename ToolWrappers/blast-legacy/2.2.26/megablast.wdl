version 1.0

task Megablast {
  input {
    Boolean? database_default_
    Boolean? query_file
    Boolean? expectation_value_default
    Boolean? alignment_view_options
    File? blast_report_file
    Boolean? filter_query_sequence
    Boolean? x_dropoff_value_gapped
    Boolean? show_gis_deflines
    Boolean? penalty_nucleotide_mismatch
    Boolean? reward_nucleotide_match
    Boolean? number_database_sequences
    Boolean? number_database_sequence
    Boolean? type_of_output
    Boolean? number_use_default
    File? asn_seqalign_file
    Boolean? believe_query_defline
    Boolean? maximal_total_length
    Boolean? word_size_length
    Boolean? effective_length_database
    Boolean? effective_length_search
    Boolean? maximal_number_ignore
    Boolean? query_strands_search
    Boolean? produce_html_output
    Boolean? restrict_search_list
    Boolean? cost_open_gap
    Boolean? cost_extend_gap
    Boolean? minimal_hit_score
    File? masked_query_output
    Boolean? show_full_ids
    Boolean? use_case_filtering
    Boolean? report_log_information
    Boolean? identity_percentage_default
    Boolean? location_query_optional
    Boolean? multiple_hits_window
    Boolean? x_dropoff_value_ungapped
    Boolean? x_dropoff_value_dynamic
    Boolean? length_discontiguous_default
    Boolean? make_discontiguous_words
    Boolean? use_nongreedy_extension
    Boolean? type_coding_optimal
    Boolean? maximal_number_save
    Boolean? force_use_legacy
  }
  command <<<
    megablast \
      ~{if (database_default_) then "-d" else ""} \
      ~{if (query_file) then "-i" else ""} \
      ~{if (expectation_value_default) then "-e" else ""} \
      ~{if (alignment_view_options) then "-m" else ""} \
      ~{if (blast_report_file) then "-o" else ""} \
      ~{if (filter_query_sequence) then "-F" else ""} \
      ~{if (x_dropoff_value_gapped) then "-X" else ""} \
      ~{if (show_gis_deflines) then "-I" else ""} \
      ~{if (penalty_nucleotide_mismatch) then "-q" else ""} \
      ~{if (reward_nucleotide_match) then "-r" else ""} \
      ~{if (number_database_sequences) then "-v" else ""} \
      ~{if (number_database_sequence) then "-b" else ""} \
      ~{if (type_of_output) then "-D" else ""} \
      ~{if (number_use_default) then "-a" else ""} \
      ~{if (asn_seqalign_file) then "-O" else ""} \
      ~{if (believe_query_defline) then "-J" else ""} \
      ~{if (maximal_total_length) then "-M" else ""} \
      ~{if (word_size_length) then "-W" else ""} \
      ~{if (effective_length_database) then "-z" else ""} \
      ~{if (effective_length_search) then "-Y" else ""} \
      ~{if (maximal_number_ignore) then "-P" else ""} \
      ~{if (query_strands_search) then "-S" else ""} \
      ~{if (produce_html_output) then "-T" else ""} \
      ~{if (restrict_search_list) then "-l" else ""} \
      ~{if (cost_open_gap) then "-G" else ""} \
      ~{if (cost_extend_gap) then "-E" else ""} \
      ~{if (minimal_hit_score) then "-s" else ""} \
      ~{if (masked_query_output) then "-Q" else ""} \
      ~{if (show_full_ids) then "-f" else ""} \
      ~{if (use_case_filtering) then "-U" else ""} \
      ~{if (report_log_information) then "-R" else ""} \
      ~{if (identity_percentage_default) then "-p" else ""} \
      ~{if (location_query_optional) then "-L" else ""} \
      ~{if (multiple_hits_window) then "-A" else ""} \
      ~{if (x_dropoff_value_ungapped) then "-y" else ""} \
      ~{if (x_dropoff_value_dynamic) then "-Z" else ""} \
      ~{if (length_discontiguous_default) then "-t" else ""} \
      ~{if (make_discontiguous_words) then "-g" else ""} \
      ~{if (use_nongreedy_extension) then "-n" else ""} \
      ~{if (type_coding_optimal) then "-N" else ""} \
      ~{if (maximal_number_save) then "-H" else ""} \
      ~{if (force_use_legacy) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    database_default_: "Database [String]\\ndefault = nr"
    query_file: "Query File [File In]"
    expectation_value_default: "Expectation value [Real]\\ndefault = 10.0"
    alignment_view_options: "alignment view options:"
    blast_report_file: "BLAST report Output File [File Out]  Optional\\ndefault = stdout"
    filter_query_sequence: "Filter query sequence [String]\\ndefault = T"
    x_dropoff_value_gapped: "X dropoff value for gapped alignment (in bits) [Integer]\\ndefault = 20"
    show_gis_deflines: "Show GI's in deflines [T/F]\\ndefault = F"
    penalty_nucleotide_mismatch: "Penalty for a nucleotide mismatch [Integer]\\ndefault = -3"
    reward_nucleotide_match: "Reward for a nucleotide match [Integer]\\ndefault = 1"
    number_database_sequences: "Number of database sequences to show one-line descriptions for (V) [Integer]\\ndefault = 500"
    number_database_sequence: "Number of database sequence to show alignments for (B) [Integer]\\ndefault = 250"
    type_of_output: "Type of output:"
    number_use_default: "Number of processors to use [Integer]\\ndefault = 1"
    asn_seqalign_file: "ASN.1 SeqAlign file; must be used in conjunction with -D2 option [File Out]  Optional"
    believe_query_defline: "Believe the query defline [T/F]  Optional\\ndefault = F"
    maximal_total_length: "Maximal total length of queries for a single search [Integer]\\ndefault = 5000000"
    word_size_length: "Word size (length of best perfect match) [Integer]\\ndefault = 28"
    effective_length_database: "Effective length of the database (use zero for the real size) [Real]\\ndefault = 0"
    effective_length_search: "Effective length of the search space (use zero for the real size) [Real]\\ndefault = 0"
    maximal_number_ignore: "Maximal number of positions for a hash value (set to 0 to ignore) [Integer]\\ndefault = 0"
    query_strands_search: "Query strands to search against database: 3 is both, 1 is top, 2 is bottom [Integer]\\ndefault = 3"
    produce_html_output: "Produce HTML output [T/F]\\ndefault = F"
    restrict_search_list: "Restrict search of database to list of GI's [String]  Optional"
    cost_open_gap: "Cost to open a gap (-1 invokes default behavior) [Integer]\\ndefault = -1"
    cost_extend_gap: "Cost to extend a gap (-1 invokes default behavior) [Integer]\\ndefault = -1"
    minimal_hit_score: "Minimal hit score to report (0 for default behavior) [Integer]\\ndefault = 0"
    masked_query_output: "Masked query output, must be used in conjunction with -D 2 option [File Out]  Optional"
    show_full_ids: "Show full IDs in the output (default - only GIs or accessions) [T/F]\\ndefault = F"
    use_case_filtering: "Use lower case filtering of FASTA sequence [T/F]  Optional\\ndefault = F"
    report_log_information: "Report the log information at the end of output [T/F]  Optional\\ndefault = F"
    identity_percentage_default: "Identity percentage cut-off [Real]\\ndefault = 0"
    location_query_optional: "Location on query sequence [String]  Optional"
    multiple_hits_window: "Multiple Hits window size; default is 0 (i.e. single-hit extensions) or 40 for discontiguous template (negative number overrides this) [Integer]\\ndefault = 0"
    x_dropoff_value_ungapped: "X dropoff value for ungapped extension [Integer]\\ndefault = 10"
    x_dropoff_value_dynamic: "X dropoff value for dynamic programming gapped extension [Integer]\\ndefault = 50"
    length_discontiguous_default: "Length of a discontiguous word template (contiguous word if 0) [Integer]\\ndefault = 0"
    make_discontiguous_words: "Make discontiguous megablast generate words for every base of the database (mandatory with the current BLAST engine) [T/F]  Optional\\ndefault = T"
    use_nongreedy_extension: "Use non-greedy (dynamic programming) extension for affine gap scores [T/F]  Optional\\ndefault = F"
    type_coding_optimal: "Type of a discontiguous word template (0 - coding, 1 - optimal, 2 - two simultaneous [Integer]\\ndefault = 0"
    maximal_number_save: "Maximal number of HSPs to save per database sequence (0 = unlimited) [Integer]\\ndefault = 0"
    force_use_legacy: "Force use of the legacy BLAST engine [T/F]  Optional\\ndefault = F\\n"
  }
  output {
    File out_stdout = stdout()
    File out_blast_report_file = "${in_blast_report_file}"
    File out_asn_seqalign_file = "${in_asn_seqalign_file}"
    File out_masked_query_output = "${in_masked_query_output}"
  }
}