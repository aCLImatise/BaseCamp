version 1.0

task GeoGenerateSampleSheetpy {
  input {
    File? series_matrix_file
    File? output_file
    File? log_file
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    geo_generate_sample_sheet_py \
      ~{if defined(series_matrix_file) then ("--series-matrix-file " +  '"' + series_matrix_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    series_matrix_file: "The GEO series matrix file."
    output_file: "The output file."
    log_file: "Path of log file (if specified, report to stdout AND file."
    quiet: "Only output errors and warnings."
    verbose: "Enable verbose output. Ignored if --quiet is specified."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}