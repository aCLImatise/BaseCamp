version 1.0

task SummaryFromStats {
  input {
    File? output_summary_file
    Array[String] percentiles
    Boolean? per_reference
  }
  command <<<
    summary_from_stats \
      ~{if defined(output_summary_file) then ("--output " +  '"' + output_summary_file + '"') else ""} \
      ~{if defined(percentiles) then ("--percentiles " +  '"' + percentiles + '"') else ""} \
      ~{if (per_reference) then "--per_reference" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pomoxis:0.3.6--py_0"
  }
  parameter_meta {
    output_summary_file: "Output summary to file instead of stderr. (default:\\n<_io.TextIOWrapper name='<stderr>' mode='w'\\nencoding='utf-8'>)"
    percentiles: "Percentiles for summary. (default: (10, 50, 90))"
    per_reference: "Also output a summary for each reference. (default:\\nFalse)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_summary_file = "${in_output_summary_file}"
  }
}