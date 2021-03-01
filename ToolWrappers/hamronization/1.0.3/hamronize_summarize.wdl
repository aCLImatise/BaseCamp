version 1.0

task HamronizeSummarize {
  input {
    String? summary_type
    File? output_file_path
    String ham_ron_ized_reports
  }
  command <<<
    hamronize summarize \
      ~{ham_ron_ized_reports} \
      ~{if defined(summary_type) then ("--summary_type " +  '"' + summary_type + '"') else ""} \
      ~{if defined(output_file_path) then ("--output " +  '"' + output_file_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hamronization:1.0.3--py_0"
  }
  parameter_meta {
    summary_type: "Which summary report format to generate"
    output_file_path: "Output file path for summary\\n"
    ham_ron_ized_reports: "list of hAMRonized reports"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_path = "${in_output_file_path}"
  }
}