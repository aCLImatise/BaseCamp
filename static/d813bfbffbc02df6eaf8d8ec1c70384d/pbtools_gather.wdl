version 1.0

task PbtoolsGather {
  input {
    String? log_file
    String? log_level
    Boolean? debug
    Boolean? quiet
    Boolean? verbose
    Boolean? join_contigs
    String output_file
    String chunked_files
  }
  command <<<
    pbtools-gather \
      ~{output_file} \
      ~{chunked_files} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--join-contigs" false="" join_contigs}
  >>>
  parameter_meta {
    log_file: "Write the log to file. Default(None) will write to stdout. (default: None)"
    log_level: "Set log level (default: INFO)"
    debug: "Alias for setting log level to DEBUG (default: False)"
    quiet: "Alias for setting log level to CRITICAL to suppress output. (default: False)"
    verbose: "Set the verbosity level. (default: None)"
    join_contigs: "Merge split contigs (default: False)"
    output_file: "Gathered output file"
    chunked_files: "Chunked input files"
  }
}