version 1.0

task Impala {
  input {
    Boolean? database_default_
    Boolean? query_file_default
    Boolean? expectation_value_e
    Boolean? alignment_view_options
    File? output_file_stdout
    Boolean? filter_query_sequence
    Boolean? cost_open_default
    Boolean? cost_extend_default
    Boolean? dropoff_x_attempted
    Boolean? number_use_default
    Boolean? show_gis_deflines
    Boolean? constant_pseudocounts_multipass
    Boolean? maximum_number_passes
    Boolean? believe_defline_default
    File? seqalign_file_be
    Boolean? matrix_default_blosum
    Boolean? database_name_matrix
    Boolean? effective_length_database
    Boolean? print_help_overrides
    Boolean? number_print_default
    Boolean? number_show_default
  }
  command <<<
    impala \
      ~{if (database_default_) then "-d" else ""} \
      ~{if (query_file_default) then "-i" else ""} \
      ~{if (expectation_value_e) then "-e" else ""} \
      ~{if (alignment_view_options) then "-m" else ""} \
      ~{if (output_file_stdout) then "-o" else ""} \
      ~{if (filter_query_sequence) then "-F" else ""} \
      ~{if (cost_open_default) then "-G" else ""} \
      ~{if (cost_extend_default) then "-E" else ""} \
      ~{if (dropoff_x_attempted) then "-y" else ""} \
      ~{if (number_use_default) then "-a" else ""} \
      ~{if (show_gis_deflines) then "-I" else ""} \
      ~{if (constant_pseudocounts_multipass) then "-c" else ""} \
      ~{if (maximum_number_passes) then "-j" else ""} \
      ~{if (believe_defline_default) then "-J" else ""} \
      ~{if (seqalign_file_be) then "-O" else ""} \
      ~{if (matrix_default_blosum) then "-M" else ""} \
      ~{if (database_name_matrix) then "-P" else ""} \
      ~{if (effective_length_database) then "-z" else ""} \
      ~{if (print_help_overrides) then "-H" else ""} \
      ~{if (number_print_default) then "-v" else ""} \
      ~{if (number_show_default) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    database_default_: "Database [String]\\ndefault = nr"
    query_file_default: "Query File [File In]\\ndefault = stdin"
    expectation_value_e: "Expectation value (E) [Real]\\ndefault = 10.0"
    alignment_view_options: "alignment view options: 0 = pairwise, 1 = master-slave showing identities, 2 = master-slave no identities, 3 = flat master-slave, show identities, 4 = flat master-slave, no identities, 5 = master-slave no identities and blunt ends, 6 = flat master-slave, no identities and blunt ends [Integer]\\ndefault = 0"
    output_file_stdout: "Output File for Alignment [File Out]  Optional\\ndefault = stdout"
    filter_query_sequence: "Filter query sequence with SEG [String]\\ndefault = F"
    cost_open_default: "Cost to open a gap [Integer]\\ndefault = 11"
    cost_extend_default: "Cost to extend a gap [Integer]\\ndefault = 1"
    dropoff_x_attempted: "Dropoff (X) for attempted computation of alignments from endpoints [Real]\\ndefault = 7.0"
    number_use_default: "Number of processors to use [Integer]\\ndefault = 1"
    show_gis_deflines: "Show GI's in deflines [T/F]\\ndefault = F"
    constant_pseudocounts_multipass: "Constant in pseudocounts for multipass version [Integer]\\ndefault = 10"
    maximum_number_passes: "Maximum number of passes to use in  multipass version [Integer]\\ndefault = 1"
    believe_defline_default: "Believe the query defline [T/F]\\ndefault = F"
    seqalign_file_be: "SeqAlign file ('Believe the query defline' must be TRUE) [File Out]  Optional"
    matrix_default_blosum: "Matrix [String]\\ndefault = BLOSUM62"
    database_name_matrix: "Database name for matrix profiles [File In]\\ndefault = stdin"
    effective_length_database: "Effective length of the database (default is 0 for actual size, use -1 for size computed in makemat) [Integer]\\ndefault = 0"
    print_help_overrides: "Print help; overrides all other arguments [T/F]\\ndefault = F"
    number_print_default: "Number of one-line descriptions to print [Integer]\\ndefault = 250"
    number_show_default: "Number of alignments to show  [Integer]\\ndefault = 250\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_stdout = "${in_output_file_stdout}"
    File out_seqalign_file_be = "${in_seqalign_file_be}"
  }
}