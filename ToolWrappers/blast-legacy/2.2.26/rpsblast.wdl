version 1.0

task Rpsblast {
  input {
    Boolean? input_query_sequence
    Boolean? rps_blast_database
    Boolean? query_sequence_protein
    Boolean? expectation_value_e
    Boolean? alignment_view_options
    File? output_file_stdout
    Boolean? dropoff_x_default
    Boolean? multiple_hit_single
    Boolean? filter_query_sequence
    Boolean? x_dropoff_value_gapped
    Boolean? number_bits_trigger
    Boolean? number_use_default
    Boolean? show_gis_deflines
    Boolean? believe_defline_default
    Boolean? x_dropoff_value_final
    File? seqalign_file_be
    Boolean? number_database_sequences
    Boolean? number_database_sequence
    Boolean? effective_length_database
    Boolean? effective_length_search
    Boolean? produce_html_output
    File? logfile_name_optionaldefault
    Boolean? use_case_filtering
    Boolean? range_restriction_query
  }
  command <<<
    rpsblast \
      ~{if (input_query_sequence) then "-i" else ""} \
      ~{if (rps_blast_database) then "-d" else ""} \
      ~{if (query_sequence_protein) then "-p" else ""} \
      ~{if (expectation_value_e) then "-e" else ""} \
      ~{if (alignment_view_options) then "-m" else ""} \
      ~{if (output_file_stdout) then "-o" else ""} \
      ~{if (dropoff_x_default) then "-y" else ""} \
      ~{if (multiple_hit_single) then "-P" else ""} \
      ~{if (filter_query_sequence) then "-F" else ""} \
      ~{if (x_dropoff_value_gapped) then "-X" else ""} \
      ~{if (number_bits_trigger) then "-N" else ""} \
      ~{if (number_use_default) then "-a" else ""} \
      ~{if (show_gis_deflines) then "-I" else ""} \
      ~{if (believe_defline_default) then "-J" else ""} \
      ~{if (x_dropoff_value_final) then "-Z" else ""} \
      ~{if (seqalign_file_be) then "-O" else ""} \
      ~{if (number_database_sequences) then "-v" else ""} \
      ~{if (number_database_sequence) then "-b" else ""} \
      ~{if (effective_length_database) then "-z" else ""} \
      ~{if (effective_length_search) then "-Y" else ""} \
      ~{if (produce_html_output) then "-T" else ""} \
      ~{if (logfile_name_optionaldefault) then "-l" else ""} \
      ~{if (use_case_filtering) then "-U" else ""} \
      ~{if (range_restriction_query) then "-L" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_query_sequence: "Input query sequence (this parameter must be set) [File In]\\ndefault = stdin"
    rps_blast_database: "RPS BLAST Database [File In]"
    query_sequence_protein: "Query sequence is protein  [T/F]  Optional\\ndefault = T"
    expectation_value_e: "Expectation value (E) [Real]\\ndefault = 10.0"
    alignment_view_options: "alignment view options:"
    output_file_stdout: "Output File for Alignment [File Out]  Optional\\ndefault = stdout"
    dropoff_x_default: "Dropoff (X) for blast extensions in bits (default if zero) [Real]\\ndefault = 7.0"
    multiple_hit_single: "0 for multiple hit, 1 for single hit [Integer]\\ndefault = 0"
    filter_query_sequence: "Filter query sequence with SEG [String]\\ndefault = F"
    x_dropoff_value_gapped: "X dropoff value for gapped alignment (in bits) [Integer]\\ndefault = 15"
    number_bits_trigger: "Number of bits to trigger gapping [Real]\\ndefault = 22.0"
    number_use_default: "Number of processors to use [Integer]\\ndefault = 1"
    show_gis_deflines: "Show GI's in deflines [T/F]\\ndefault = F"
    believe_defline_default: "Believe the query defline [T/F]\\ndefault = F"
    x_dropoff_value_final: "X dropoff value for final gapped alignment (in bits) [Integer]\\ndefault = 25"
    seqalign_file_be: "SeqAlign file ('Believe the query defline' must be TRUE) [File Out]  Optional"
    number_database_sequences: "Number of database sequences to show one-line descriptions for (V) [Integer]\\ndefault = 500"
    number_database_sequence: "Number of database sequence to show alignments for (B) [Integer]\\ndefault = 250"
    effective_length_database: "Effective length of the database (use zero for the real size) [Real]\\ndefault = 0"
    effective_length_search: "Effective length of the search space (use zero for the real size) [Real]\\ndefault = 0"
    produce_html_output: "Produce HTML output [T/F]\\ndefault = F"
    logfile_name_optionaldefault: "Logfile name  [File Out]  Optional\\ndefault = stderr"
    use_case_filtering: "Use lower case filtering of FASTA sequence [T/F]  Optional\\ndefault = F"
    range_restriction_query: "Range restriction on query sequence (Format: start,stop) blastp only\\n0 in 'start' refers to the beginning of the sequence\\n0 in 'stop' refers to the end of the sequence [String]  Optional\\ndefault = 0,0\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_stdout = "${in_output_file_stdout}"
    File out_seqalign_file_be = "${in_seqalign_file_be}"
    File out_logfile_name_optionaldefault = "${in_logfile_name_optionaldefault}"
  }
}