version 1.0

task Dataset {
  input {
    String? log_file
    String? log_level
    Boolean? debug
    Boolean? quiet
    Boolean? verbose
    Boolean? strict
    Boolean? skip_counts
  }
  command <<<
    dataset \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--strict" false="" strict} \
      ~{true="--skipCounts" false="" skip_counts}
  >>>
  parameter_meta {
    log_file: "Write the log to file. Default(None) will write to stdout. (default: None)"
    log_level: "Set log level (default: WARNING)"
    debug: "Alias for setting log level to DEBUG (default: False)"
    quiet: "Alias for setting log level to CRITICAL to suppress output. (default: False)"
    verbose: "Set the verbosity level. (default: None)"
    strict: "Turn on strict tests, raise all errors (default: False)"
    skip_counts: "Skip updating NumRecords and TotalLength counts (default: False)"
  }
}