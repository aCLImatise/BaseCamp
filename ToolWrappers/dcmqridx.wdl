version 1.0

task Dcmqridx {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? log_level
    Boolean? log_config
    Boolean? _print_list
    Boolean? _notnew_set
    String index_out
    String dcm_file_in
  }
  command <<<
    dcmqridx \
      ~{index_out} \
      ~{dcm_file_in} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""} \
      ~{if (_print_list) then "-p" else ""} \
      ~{if (_notnew_set) then "-n" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet       quiet mode, print no warnings and errors"
    _verbose_details: "--verbose     verbose mode, print processing details"
    _debug_information: "--debug       debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger"
    _print_list: "--print       list contents of database index file"
    _notnew_set: "--not-new     set instance reviewed status to 'not new'"
    index_out: "storage area for the index file (directory)"
    dcm_file_in: "DICOM image file to be registered in the index file"
  }
  output {
    File out_stdout = stdout()
  }
}