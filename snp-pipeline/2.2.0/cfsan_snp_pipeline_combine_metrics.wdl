version 1.0

task CfsanSnpPipelineCombineMetrics {
  input {
    Boolean? force
    File? metrics
    File? output_file_relative
    Boolean? spaces
    Int? verbose
  }
  command <<<
    cfsan_snp_pipeline combine_metrics \
      ~{if (force) then "--force" else ""} \
      ~{if defined(metrics) then ("--metrics " +  '"' + metrics + '"') else ""} \
      ~{if defined(output_file_relative) then ("--output " +  '"' + output_file_relative + '"') else ""} \
      ~{if (spaces) then "--spaces" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result files already exist\\nand are newer than inputs (default: False)"
    metrics: "File name of the metrics files which must exist in\\neach of the sample directories. (default: metrics)"
    output_file_relative: "Output file. Relative or absolute path to the combined\\nmetrics file. (default: metrics.tsv)"
    spaces: "Emit column headings with spaces instead of\\nunderscores (default: False)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_relative = "${in_output_file_relative}"
  }
}