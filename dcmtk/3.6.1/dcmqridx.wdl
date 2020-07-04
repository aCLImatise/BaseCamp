version 1.0

task Dcmqridx {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? log_level
    Boolean? log_config
    Boolean? _print_list
    Boolean? _set_instance
    String index_out
    String dcm_file_in
  }
  command <<<
    dcmqridx \
      ~{index_out} \
      ~{dcm_file_in} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-config" false="" log_config} \
      ~{true="-p" false="" _print_list} \
      ~{true="-n" false="" _set_instance}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet       quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose     verbose mode, print processing details"
    _debug_debug: "--debug       debug mode, print debug information"
    log_level: "[l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    log_config: "[f]ilename: string use config file f for the logger"
    _print_list: "--print       list contents of database index file"
    _set_instance: "--not-new     set instance reviewed status to 'not new'"
    index_out: "storage area for the index file (directory)"
    dcm_file_in: "DICOM image file to be registered in the index file"
  }
}