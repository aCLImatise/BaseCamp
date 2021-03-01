version 1.0

task Dcmqridx {
  input {
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    Boolean? print
    Boolean? not_new
    String index_out
    String dcm_file_in
  }
  command <<<
    dcmqridx \
      ~{index_out} \
      ~{dcm_file_in} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (print) then "--print" else ""} \
      ~{if (not_new) then "--not-new" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arguments: "print expanded command line arguments"
    quiet: "quiet mode, print no warnings and errors"
    verbose: "verbose mode, print processing details"
    debug: "debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    print: "list contents of database index file"
    not_new: "set instance reviewed status to 'not new'"
    index_out: "storage area for the index file (directory)"
    dcm_file_in: "DICOM image file to be registered in the index file"
  }
  output {
    File out_stdout = stdout()
  }
}