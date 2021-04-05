version 1.0

task CRISPRessoCompare {
  input {
    String? comparison
    String? name
    Int? sample_one_name
    Int? sample_two_name
    Directory? min_frequency_alleles_around_cut_to_plot
    Int? max_rows_alleles_around_cut_to_plot
    Boolean? suppress_report
    Directory? place_report_in_output_folder
    Boolean? debug
    Int cris_presso_output_folder_one
    Int cris_presso_output_folder_two
  }
  command <<<
    CRISPRessoCompare \
      ~{cris_presso_output_folder_one} \
      ~{cris_presso_output_folder_two} \
      ~{if defined(comparison) then ("-Comparison " +  '"' + comparison + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(sample_one_name) then ("--sample_1_name " +  '"' + sample_one_name + '"') else ""} \
      ~{if defined(sample_two_name) then ("--sample_2_name " +  '"' + sample_two_name + '"') else ""} \
      ~{if defined(min_frequency_alleles_around_cut_to_plot) then ("--min_frequency_alleles_around_cut_to_plot " +  '"' + min_frequency_alleles_around_cut_to_plot + '"') else ""} \
      ~{if defined(max_rows_alleles_around_cut_to_plot) then ("--max_rows_alleles_around_cut_to_plot " +  '"' + max_rows_alleles_around_cut_to_plot + '"') else ""} \
      ~{if (suppress_report) then "--suppress_report" else ""} \
      ~{if (place_report_in_output_folder) then "--place_report_in_output_folder" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/crispresso2:2.1.0--py27h3dcb392_0"
  }
  parameter_meta {
    comparison: "two CRISPResso analyses-"
    name: "Output name (default: )"
    sample_one_name: "Sample 1 name (default: None)"
    sample_two_name: "Sample 2 name (default: None)"
    min_frequency_alleles_around_cut_to_plot: "Minimum % reads required to report an allele in the\\nalleles table plot. (default: 0.2)"
    max_rows_alleles_around_cut_to_plot: "Maximum number of rows to report in the alleles table\\nplot. (default: 50)"
    suppress_report: "Suppress output report (default: False)"
    place_report_in_output_folder: "If true, report will be written inside the CRISPResso\\noutput folder. By default, the report will be written\\none directory up from the report output. (default:\\nFalse)"
    debug: "Show debug messages (default: False)"
    cris_presso_output_folder_one: "First output folder with CRISPResso analysis"
    cris_presso_output_folder_two: "Second output folder with CRISPResso analysis"
  }
  output {
    File out_stdout = stdout()
    Directory out_min_frequency_alleles_around_cut_to_plot = "${in_min_frequency_alleles_around_cut_to_plot}"
    Directory out_place_report_in_output_folder = "${in_place_report_in_output_folder}"
  }
}