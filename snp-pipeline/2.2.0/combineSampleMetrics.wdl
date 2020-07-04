version 1.0

task CombineSampleMetrics.sh {
  input {
    Boolean? force
    String? metrics
    File? output_file_relative
    Boolean? spaces
    String? verbose
    String sample_dirs_file
  }
  command <<<
    combineSampleMetrics.sh \
      ~{sample_dirs_file} \
      ~{true="--force" false="" force} \
      ~{if defined(metrics) then ("--metrics " +  '"' + metrics + '"') else ""} \
      ~{if defined(output_file_relative) then ("--output " +  '"' + output_file_relative + '"') else ""} \
      ~{true="--spaces" false="" spaces} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result files already exist and are newer than inputs (default: False)"
    metrics: "File name of the metrics files which must exist in each of the sample directories. (default: metrics)"
    output_file_relative: "Output file. Relative or absolute path to the combined metrics file. (default: metrics.tsv)"
    spaces: "Emit column headings with spaces instead of underscores (default: False)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    sample_dirs_file: "Relative or absolute path to file containing a list of directories -- one per sample"
  }
}