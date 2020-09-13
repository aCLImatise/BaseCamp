version 1.0

task Showsnps {
  input {
    Boolean? report_snps_alignments
    Boolean? print_output_header
    Boolean? do_report_indels
    Boolean? include_length_information
    Boolean? sort_output_lines_query
    Boolean? sort_output_lines_reference
    Boolean? specify_alignments_report
    Boolean? switch_to_format
    Int? include_characters_surrounding
    String delta_file
  }
  command <<<
    show_snps \
      ~{delta_file} \
      ~{if (report_snps_alignments) then "-C" else ""} \
      ~{if (print_output_header) then "-H" else ""} \
      ~{if (do_report_indels) then "-I" else ""} \
      ~{if (include_length_information) then "-l" else ""} \
      ~{if (sort_output_lines_query) then "-q" else ""} \
      ~{if (sort_output_lines_reference) then "-r" else ""} \
      ~{if (specify_alignments_report) then "-S" else ""} \
      ~{if (switch_to_format) then "-T" else ""} \
      ~{if defined(include_characters_surrounding) then ("-x " +  '"' + include_characters_surrounding + '"') else ""}
  >>>
  parameter_meta {
    report_snps_alignments: "Do not report SNPs from alignments with an ambiguous\\nmapping, i.e. only report SNPs where the [R] and [Q]\\ncolumns equal 0 and do not output these columns"
    print_output_header: "Do not print the output header"
    do_report_indels: "Do not report indels"
    include_length_information: "Include sequence length information in the output"
    sort_output_lines_query: "Sort output lines by query IDs and SNP positions"
    sort_output_lines_reference: "Sort output lines by reference IDs and SNP positions"
    specify_alignments_report: "Specify which alignments to report by passing\\n'show-coords' lines to stdin"
    switch_to_format: "Switch to tab-delimited format"
    include_characters_surrounding: "Include x characters of surrounding SNP context in the\\noutput, default 0"
    delta_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}