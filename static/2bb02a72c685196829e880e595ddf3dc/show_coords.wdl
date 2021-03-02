version 1.0

task Showcoords {
  input {
    Boolean? merges_overlapping_alignments
    Boolean? switch_output_btab
    Boolean? include_percent_coverage
    Boolean? display_alignment_direction
    Boolean? deprecated_option_use
    Boolean? print_output_header
    Float? set_minimum_percent
    Boolean? knockout_display_alignments
    Boolean? include_length_information
    Int? set_minimum_alignment
    Boolean? annotate_maximal_alignments
    Boolean? sort_output_lines_query
    Boolean? sort_output_lines_reference
    Boolean? switch_output_tabdelimited
    String delta_file
  }
  command <<<
    show_coords \
      ~{delta_file} \
      ~{if (merges_overlapping_alignments) then "-b" else ""} \
      ~{if (switch_output_btab) then "-B" else ""} \
      ~{if (include_percent_coverage) then "-c" else ""} \
      ~{if (display_alignment_direction) then "-d" else ""} \
      ~{if (deprecated_option_use) then "-g" else ""} \
      ~{if (print_output_header) then "-H" else ""} \
      ~{if defined(set_minimum_percent) then ("-I " +  '"' + set_minimum_percent + '"') else ""} \
      ~{if (knockout_display_alignments) then "-k" else ""} \
      ~{if (include_length_information) then "-l" else ""} \
      ~{if defined(set_minimum_alignment) then ("-L " +  '"' + set_minimum_alignment + '"') else ""} \
      ~{if (annotate_maximal_alignments) then "-o" else ""} \
      ~{if (sort_output_lines_query) then "-q" else ""} \
      ~{if (sort_output_lines_reference) then "-r" else ""} \
      ~{if (switch_output_tabdelimited) then "-T" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    merges_overlapping_alignments: "Merges overlapping alignments regardless of match dir\\nor frame and does not display any idenitity information."
    switch_output_btab: "Switch output to btab format"
    include_percent_coverage: "Include percent coverage information in the output"
    display_alignment_direction: "Display the alignment direction in the additional\\nFRM columns (default for promer)"
    deprecated_option_use: "Deprecated option. Please use 'delta-filter' instead"
    print_output_header: "Do not print the output header"
    set_minimum_percent: "Set minimum percent identity to display"
    knockout_display_alignments: "Knockout (do not display) alignments that overlap\\nanother alignment in a different frame by more than 50%\\nof their length, AND have a smaller percent similarity\\nor are less than 75% of the size of the other alignment\\n(promer only)"
    include_length_information: "Include the sequence length information in the output"
    set_minimum_alignment: "Set minimum alignment length to display"
    annotate_maximal_alignments: "Annotate maximal alignments between two sequences, i.e.\\noverlaps between reference and query sequences"
    sort_output_lines_query: "Sort output lines by query IDs and coordinates"
    sort_output_lines_reference: "Sort output lines by reference IDs and coordinates"
    switch_output_tabdelimited: "Switch output to tab-delimited format\\nInput is the .delta output of either the \\\"nucmer\\\" or the"
    delta_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}