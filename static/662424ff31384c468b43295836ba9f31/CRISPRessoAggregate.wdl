version 1.0

task CRISPRessoAggregate {
  input {
    String? aggregation
    String? prefix
    String? suffix
    String? name
    Int? min_reads_for_inclusion
    Directory? place_report_in_output_folder
    Boolean? suppress_report
    Boolean? suppress_plots
    Boolean? debug
  }
  command <<<
    CRISPRessoAggregate \
      ~{if defined(aggregation) then ("-Aggregation " +  '"' + aggregation + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(min_reads_for_inclusion) then ("--min_reads_for_inclusion " +  '"' + min_reads_for_inclusion + '"') else ""} \
      ~{if (place_report_in_output_folder) then "--place_report_in_output_folder" else ""} \
      ~{if (suppress_report) then "--suppress_report" else ""} \
      ~{if (suppress_plots) then "--suppress_plots" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/crispresso2:2.1.0--py27h3dcb392_0"
  }
  parameter_meta {
    aggregation: "CRISPResso Run Data-"
    prefix: "Prefix for CRISPResso folders to aggregate (may be\\nspecified multiple times)"
    suffix: "Suffix for CRISPResso folders to aggregate"
    name: "Output name of the report"
    min_reads_for_inclusion: "Minimum number of reads for a run to be included in\\nthe run summary"
    place_report_in_output_folder: "If true, report will be written inside the CRISPResso\\noutput folder. By default, the report will be written\\none directory up from the report output."
    suppress_report: "Suppress output report"
    suppress_plots: "Suppress output plots"
    debug: "Show debug messages"
  }
  output {
    File out_stdout = stdout()
    Directory out_place_report_in_output_folder = "${in_place_report_in_output_folder}"
  }
}