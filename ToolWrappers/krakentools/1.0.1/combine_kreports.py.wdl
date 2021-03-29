version 1.0

task CombineKreportspy {
  input {
    Array[String] report_files
    File? output_kraken_report
    Boolean? display_headers
    Boolean? no_headers
    Array[String] sample_names
    Boolean? only_combined
  }
  command <<<
    combine_kreports_py \
      ~{if defined(report_files) then ("--report-files " +  '"' + report_files + '"') else ""} \
      ~{if defined(output_kraken_report) then ("--output " +  '"' + output_kraken_report + '"') else ""} \
      ~{if (display_headers) then "--display-headers" else ""} \
      ~{if (no_headers) then "--no-headers" else ""} \
      ~{if defined(sample_names) then ("--sample-names " +  '"' + sample_names + '"') else ""} \
      ~{if (only_combined) then "--only-combined" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0"
  }
  parameter_meta {
    report_files: "Input kraken report files to combine (separate by\\nspaces)"
    output_kraken_report: "Output kraken report file with combined information"
    display_headers: "Include header lines"
    no_headers: "Do not include header lines"
    sample_names: "Sample names to use as headers in the new report"
    only_combined: "Include only the total combined reads column, not the\\nindividual sample cols\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_kraken_report = "${in_output_kraken_report}"
  }
}