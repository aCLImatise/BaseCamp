version 1.0

task Showcoords {
  input {
    Boolean? merges_overlapping_alignments
    Boolean? switch_output_btab
    Boolean? include_coverage_information
    Boolean? display_alignment_direction
    Boolean? deprecated_option_use
    Boolean? print_output_header
    Float? set_percent_identity
    Boolean? knockout_display_alignments
    Boolean? include_length_information
    Int? set_alignment_length
    Boolean? annotate_maximal_alignments
    Boolean? sort_output_lines_query
    Boolean? sort_output_lines_reference
    Boolean? switch_output_formatinput
    String delta_file
  }
  command <<<
    show_coords \
      ~{delta_file} \
      ~{if (merges_overlapping_alignments) then "-b" else ""} \
      ~{if (switch_output_btab) then "-B" else ""} \
      ~{if (include_coverage_information) then "-c" else ""} \
      ~{if (display_alignment_direction) then "-d" else ""} \
      ~{if (deprecated_option_use) then "-g" else ""} \
      ~{if (print_output_header) then "-H" else ""} \
      ~{if defined(set_percent_identity) then ("-I " +  '"' + set_percent_identity + '"') else ""} \
      ~{if (knockout_display_alignments) then "-k" else ""} \
      ~{if (include_length_information) then "-l" else ""} \
      ~{if defined(set_alignment_length) then ("-L " +  '"' + set_alignment_length + '"') else ""} \
      ~{if (annotate_maximal_alignments) then "-o" else ""} \
      ~{if (sort_output_lines_query) then "-q" else ""} \
      ~{if (sort_output_lines_reference) then "-r" else ""} \
      ~{if (switch_output_formatinput) then "-T" else ""}
  >>>
  parameter_meta {
    merges_overlapping_alignments: "Merges overlapping alignments regardless of match dir\\nor frame and does not display any idenitity information."
    switch_output_btab: "Switch output to btab format"
    include_coverage_information: "Include percent coverage information in the output"
    display_alignment_direction: "Display the alignment direction in the additional\\nFRM columns (default for promer)"
    deprecated_option_use: "Deprecated option. Please use 'delta-filter' instead"
    print_output_header: "Do not print the output header"
    set_percent_identity: "Set minimum percent identity to display"
    knockout_display_alignments: "Knockout (do not display) alignments that overlap\\nanother alignment in a different frame by more than 50%\\nof their length, AND have a smaller percent similarity\\nor are less than 75% of the size of the other alignment\\n(promer only)"
    include_length_information: "Include the sequence length information in the output"
    set_alignment_length: "Set minimum alignment length to display"
    annotate_maximal_alignments: "Annotate maximal alignments between two sequences, i.e.\\noverlaps between reference and query sequences"
    sort_output_lines_query: "Sort output lines by query IDs and coordinates"
    sort_output_lines_reference: "Sort output lines by reference IDs and coordinates"
    switch_output_formatinput: "Switch output to tab-delimited format\\nInput is the .delta output of either the \\\"nucmer\\\" or the"
    delta_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}