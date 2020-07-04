version 1.0

task DcmiodTests {
  input {
    Boolean? _list_list
    Boolean? _exhaustive_also
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? log_level
    Boolean? log_config
    String tests_to_run
  }
  command <<<
    dcmiod_tests \
      ~{tests_to_run} \
      ~{true="-l" false="" _list_list} \
      ~{true="-x" false="" _exhaustive_also} \
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-config" false="" log_config}
  >>>
  parameter_meta {
    _list_list: "--list        list available tests and exit"
    _exhaustive_also: "--exhaustive  also run extensive and slow tests --arguments   print expanded command line arguments"
    _quiet_quiet: "--quiet       quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose     verbose mode, print processing details"
    _debug_debug: "--debug       debug mode, print debug information"
    log_level: "[l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    log_config: "[f]ilename: string use config file f for the logger"
    tests_to_run: "names of tests to run (default: all)"
  }
}