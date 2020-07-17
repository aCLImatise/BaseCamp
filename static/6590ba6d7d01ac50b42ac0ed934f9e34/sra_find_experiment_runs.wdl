version 1.0

task SraFindExperimentRuns.py {
  input {
    File? experiment_file
    File? output_file
    File? log_file
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    sra_find_experiment_runs.py \
      ~{if defined(experiment_file) then ("--experiment-file " +  '"' + experiment_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    experiment_file: "File with SRA experiment IDs (starting with \"SRX\")."
    output_file: "The output file."
    log_file: "Path of log file (if specified, report to stdout AND file."
    quiet: "Only output errors and warnings."
    verbose: "Enable verbose output. Ignored if --quiet is specified."
  }
}