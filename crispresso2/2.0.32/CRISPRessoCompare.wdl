version 1.0

task CRISPRessoCompare {
  input {
    String? comparison
    Int? min_frequency_alleles_around_cut_to_plot
    Int? max_rows_alleles_around_cut_to_plot
    Boolean? suppress_report
    Boolean? place_report_in_output_folder
    Boolean? debug
    String? n
    String? var_none
    String cris_presso_output_folder_one
    String cris_presso_output_folder_two
  }
  command <<<
    CRISPRessoCompare \
      ~{cris_presso_output_folder_one} \
      ~{cris_presso_output_folder_two} \
      ~{if defined(comparison) then ("-Comparison " +  '"' + comparison + '"') else ""} \
      ~{if defined(min_frequency_alleles_around_cut_to_plot) then ("--min_frequency_alleles_around_cut_to_plot " +  '"' + min_frequency_alleles_around_cut_to_plot + '"') else ""} \
      ~{if defined(max_rows_alleles_around_cut_to_plot) then ("--max_rows_alleles_around_cut_to_plot " +  '"' + max_rows_alleles_around_cut_to_plot + '"') else ""} \
      ~{true="--suppress_report" false="" suppress_report} \
      ~{true="--place_report_in_output_folder" false="" place_report_in_output_folder} \
      ~{true="--debug" false="" debug} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(var_none) then ("-n1 " +  '"' + var_none + '"') else ""}
  >>>
  parameter_meta {
    comparison: "two CRISPResso analyses-                     "
    min_frequency_alleles_around_cut_to_plot: "Minimum % reads required to report an allele in the alleles table plot. (default: 0.2)"
    max_rows_alleles_around_cut_to_plot: "Maximum number of rows to report in the alleles table plot. (default: 50)"
    suppress_report: "Suppress output report (default: False)"
    place_report_in_output_folder: "If true, report will be written inside the CRISPResso output folder. By default, the report will be written one directory up from the report output. (default: False)"
    debug: "Show debug messages (default: False)"
    n: ""
    var_none: ""
    cris_presso_output_folder_one: "First output folder with CRISPResso analysis"
    cris_presso_output_folder_two: "Second output folder with CRISPResso analysis"
  }
}