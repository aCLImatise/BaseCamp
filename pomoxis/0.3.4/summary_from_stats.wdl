version 1.0

task SummaryFromStats {
  input {
    String? output_summary_file
    Array[String] percentiles
    Boolean? per_reference
    String? i
  }
  command <<<
    summary_from_stats \
      ~{if defined(output_summary_file) then ("--output " +  '"' + output_summary_file + '"') else ""} \
      ~{if defined(percentiles) then ("--percentiles " +  '"' + percentiles + '"') else ""} \
      ~{true="--per_reference" false="" per_reference} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    output_summary_file: "Output summary to file instead of stderr. (default: <_io.TextIOWrapper name='<stderr>' mode='w' encoding='UTF-8'>)"
    percentiles: "Percentiles for summary. (default: (10, 50, 90))"
    per_reference: "Also output a summary for each reference. (default: False)"
    i: ""
  }
}