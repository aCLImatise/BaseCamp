version 1.0

task Dataset {
  input {
    File? log_file
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
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (skip_counts) then "--skipCounts" else ""}
  >>>
  parameter_meta {
    log_file: "Write the log to file. Default(None) will write to\\nstdout. (default: None)"
    log_level: "Set log level (default: WARNING)"
    debug: "Alias for setting log level to DEBUG (default: False)"
    quiet: "Alias for setting log level to CRITICAL to suppress\\noutput. (default: False)"
    verbose: "Set the verbosity level. (default: None)"
    strict: "Turn on strict tests, raise all errors (default:\\nFalse)"
    skip_counts: "Skip updating NumRecords and TotalLength counts\\n(default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}