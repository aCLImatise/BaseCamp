version 1.0

task CombineKreports.py {
  input {
    Array[String] report_files
    String? output_kraken_report
    Boolean? display_headers
    Boolean? no_headers
    Array[String] sample_names
    Boolean? only_combined
  }
  command <<<
    combine_kreports.py \
      ~{if defined(report_files) then ("--report-files " +  '"' + report_files + '"') else ""} \
      ~{if defined(output_kraken_report) then ("--output " +  '"' + output_kraken_report + '"') else ""} \
      ~{true="--display-headers" false="" display_headers} \
      ~{true="--no-headers" false="" no_headers} \
      ~{if defined(sample_names) then ("--sample-names " +  '"' + sample_names + '"') else ""} \
      ~{true="--only-combined" false="" only_combined}
  >>>
  parameter_meta {
    report_files: "Input kraken report files to combine (separate by spaces)"
    output_kraken_report: "Output kraken report file with combined information"
    display_headers: "Include header lines"
    no_headers: "Do not include header lines"
    sample_names: "Sample names to use as headers in the new report"
    only_combined: "Include only the total combined reads column, not the individual sample cols"
  }
}