version 1.0

task Pbtoolsgather {
  input {
    File? log_file
    String? log_level
    Boolean? debug
    Boolean? quiet
    Boolean? verbose
    Boolean? join_contigs
    String output_file
    String chunked_files
  }
  command <<<
    pbtools_gather \
      ~{output_file} \
      ~{chunked_files} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (join_contigs) then "--join-contigs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log_file: "Write the log to file. Default(None) will write to\\nstdout. (default: None)"
    log_level: "Set log level (default: INFO)"
    debug: "Alias for setting log level to DEBUG (default: False)"
    quiet: "Alias for setting log level to CRITICAL to suppress\\noutput. (default: False)"
    verbose: "Set the verbosity level. (default: None)"
    join_contigs: "Merge split contigs (default: False)"
    output_file: "Gathered output file"
    chunked_files: "Chunked input files"
  }
  output {
    File out_stdout = stdout()
  }
}