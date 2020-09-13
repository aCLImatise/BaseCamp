version 1.0

task Blastpgp {
  input {
    Boolean? database_default_nr
    Boolean? query_file_needed
    Boolean? multiple_hits_window
    Boolean? threshold_extending_default
    Boolean? expectation_value_e
    Boolean? alignment_view_options
    File? output_file_alignment
    Boolean? dropoff_x_default
    Boolean? multiple_hit_single
    Boolean? filter_query_sequence
    Boolean? cost_open_default
    Boolean? cost_extend_default
    Boolean? x_dropoff_value_gapped
    Boolean? number_trigger_default
    Boolean? start_required_region
    Boolean? end_required_region
    Boolean? number_use_default
    Boolean? show_gis_f
    Boolean? constant_pseudocounts_multipass
    Boolean? maximum_number_passes
    Boolean? believe_query_default
    Boolean? x_dropoff_value_final
    File? seqalign_file_must
    Boolean? matrix_default_blosum
    Boolean? number_show_descriptions
    Boolean? number_show_alignments
    File? output_file_psiblast_checkpointing
    Boolean? input_file_psiblast
    Boolean? word_size_default
    Boolean? effective_length_zero
    Boolean? number_keep_default
    Boolean? compute_locally_optimal
    Boolean? effective_length_search
    Boolean? program_option_phiblast
    Boolean? hit_file_phiblast
    Boolean? produce_html_output
    File? output_file_psiblast_matrix
    Boolean? input_alignment_file
    Boolean? restrict_search_database
    Boolean? use_case_filtering
    Boolean? use_composition_adjustment
    Boolean? asn_scoremat_input
    Boolean? asn_scoremat_output
    Boolean? cost_decline_alignment
  }
  command <<<
    blastpgp \
      ~{if (database_default_nr) then "-d" else ""} \
      ~{if (query_file_needed) then "-i" else ""} \
      ~{if (multiple_hits_window) then "-A" else ""} \
      ~{if (threshold_extending_default) then "-f" else ""} \
      ~{if (expectation_value_e) then "-e" else ""} \
      ~{if (alignment_view_options) then "-m" else ""} \
      ~{if (output_file_alignment) then "-o" else ""} \
      ~{if (dropoff_x_default) then "-y" else ""} \
      ~{if (multiple_hit_single) then "-P" else ""} \
      ~{if (filter_query_sequence) then "-F" else ""} \
      ~{if (cost_open_default) then "-G" else ""} \
      ~{if (cost_extend_default) then "-E" else ""} \
      ~{if (x_dropoff_value_gapped) then "-X" else ""} \
      ~{if (number_trigger_default) then "-N" else ""} \
      ~{if (start_required_region) then "-S" else ""} \
      ~{if (end_required_region) then "-H" else ""} \
      ~{if (number_use_default) then "-a" else ""} \
      ~{if (show_gis_f) then "-I" else ""} \
      ~{if (constant_pseudocounts_multipass) then "-c" else ""} \
      ~{if (maximum_number_passes) then "-j" else ""} \
      ~{if (believe_query_default) then "-J" else ""} \
      ~{if (x_dropoff_value_final) then "-Z" else ""} \
      ~{if (seqalign_file_must) then "-O" else ""} \
      ~{if (matrix_default_blosum) then "-M" else ""} \
      ~{if (number_show_descriptions) then "-v" else ""} \
      ~{if (number_show_alignments) then "-b" else ""} \
      ~{if (output_file_psiblast_checkpointing) then "-C" else ""} \
      ~{if (input_file_psiblast) then "-R" else ""} \
      ~{if (word_size_default) then "-W" else ""} \
      ~{if (effective_length_zero) then "-z" else ""} \
      ~{if (number_keep_default) then "-K" else ""} \
      ~{if (compute_locally_optimal) then "-s" else ""} \
      ~{if (effective_length_search) then "-Y" else ""} \
      ~{if (program_option_phiblast) then "-p" else ""} \
      ~{if (hit_file_phiblast) then "-k" else ""} \
      ~{if (produce_html_output) then "-T" else ""} \
      ~{if (output_file_psiblast_matrix) then "-Q" else ""} \
      ~{if (input_alignment_file) then "-B" else ""} \
      ~{if (restrict_search_database) then "-l" else ""} \
      ~{if (use_case_filtering) then "-U" else ""} \
      ~{if (use_composition_adjustment) then "-t" else ""} \
      ~{if (asn_scoremat_input) then "-q" else ""} \
      ~{if (asn_scoremat_output) then "-u" else ""} \
      ~{if (cost_decline_alignment) then "-L" else ""}
  >>>
  parameter_meta {
    database_default_nr: "Database [String]\\ndefault = nr"
    query_file_needed: "Query File (not needed if restarting from scoremat) [File In]  Optional\\ndefault = stdin"
    multiple_hits_window: "Multiple Hits window size [Integer]\\ndefault = 40"
    threshold_extending_default: "Threshold for extending hits [Integer]\\ndefault = 11"
    expectation_value_e: "Expectation value (E) [Real]\\ndefault = 10.0"
    alignment_view_options: "alignment view options:"
    output_file_alignment: "Output File for Alignment [File Out]  Optional\\ndefault = stdout"
    dropoff_x_default: "Dropoff (X) for blast extensions in bits (default if zero) [Real]\\ndefault = 7.0"
    multiple_hit_single: "0 for multiple hit, 1 for single hit [Integer]\\ndefault = 0"
    filter_query_sequence: "Filter query sequence with SEG [String]\\ndefault = F"
    cost_open_default: "Cost to open a gap [Integer]\\ndefault = 11"
    cost_extend_default: "Cost to extend a gap [Integer]\\ndefault = 1"
    x_dropoff_value_gapped: "X dropoff value for gapped alignment (in bits) [Integer]\\ndefault = 15"
    number_trigger_default: "Number of bits to trigger gapping [Real]\\ndefault = 22.0"
    start_required_region: "Start of required region in query [Integer]\\ndefault = 1"
    end_required_region: "End of required region in query (-1 indicates end of query) [Integer]\\ndefault = -1"
    number_use_default: "Number of processors to use [Integer]\\ndefault = 1"
    show_gis_f: "Show GI's in deflines [T/F]\\ndefault = F"
    constant_pseudocounts_multipass: "Constant in pseudocounts for multipass version; 0 uses entropy method; otherwise a value near 30 is recommended [Integer]\\ndefault = 0"
    maximum_number_passes: "Maximum number of passes to use in  multipass version [Integer]\\ndefault = 1"
    believe_query_default: "Believe the query defline [T/F]\\ndefault = F"
    x_dropoff_value_final: "X dropoff value for final gapped alignment (in bits) [Integer]\\ndefault = 25"
    seqalign_file_must: "SeqAlign file ('Believe the query defline' must be TRUE) [File Out]  Optional"
    matrix_default_blosum: "Matrix [String]\\ndefault = BLOSUM62"
    number_show_descriptions: "Number of database sequences to show one-line descriptions for (V) [Integer]\\ndefault = 500"
    number_show_alignments: "Number of database sequence to show alignments for (B) [Integer]\\ndefault = 250"
    output_file_psiblast_checkpointing: "Output File for PSI-BLAST Checkpointing [File Out]  Optional"
    input_file_psiblast: "Input File for PSI-BLAST Restart [File In]  Optional"
    word_size_default: "Word size [Integer]\\ndefault = 3"
    effective_length_zero: "Effective length of the database (use zero for the real size) [Real]\\ndefault = 0"
    number_keep_default: "Number of best hits from a region to keep [Integer]\\ndefault = 0"
    compute_locally_optimal: "Compute locally optimal Smith-Waterman alignments [T/F]\\ndefault = F"
    effective_length_search: "Effective length of the search space (use zero for the real size) [Real]\\ndefault = 0"
    program_option_phiblast: "program option for PHI-BLAST [String]\\ndefault = blastpgp"
    hit_file_phiblast: "Hit File for PHI-BLAST [File In]\\ndefault = hit_file"
    produce_html_output: "Produce HTML output [T/F]\\ndefault = F"
    output_file_psiblast_matrix: "Output File for PSI-BLAST Matrix in ASCII [File Out]  Optional"
    input_alignment_file: "Input Alignment File for PSI-BLAST Restart [File In]  Optional"
    restrict_search_database: "Restrict search of database to list of GI's [String]  Optional"
    use_case_filtering: "Use lower case filtering of FASTA sequence [T/F]  Optional\\ndefault = F"
    use_composition_adjustment: "Use composition based score adjustment"
    asn_scoremat_input: "ASN.1 Scoremat input of checkpoint data:"
    asn_scoremat_output: "ASN.1 Scoremat output of checkpoint data:"
    cost_decline_alignment: "Cost to decline alignment (disabled when 0) [Integer]\\ndefault = 0\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_alignment = "${in_output_file_alignment}"
    File out_seqalign_file_must = "${in_seqalign_file_must}"
    File out_output_file_psiblast_checkpointing = "${in_output_file_psiblast_checkpointing}"
    File out_output_file_psiblast_matrix = "${in_output_file_psiblast_matrix}"
  }
}