version 1.0

task DcmsegTests {
  input {
    Boolean? _list_tests
    Boolean? _exhaustive_also
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? log_level
    Boolean? log_config
    String tests_to_run
  }
  command <<<
    dcmseg_tests \
      ~{tests_to_run} \
      ~{if (_list_tests) then "-l" else ""} \
      ~{if (_exhaustive_also) then "-x" else ""} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""}
  >>>
  parameter_meta {
    _list_tests: "--list        list available tests and exit"
    _exhaustive_also: "--exhaustive  also run extensive and slow tests"
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet       quiet mode, print no warnings and errors"
    _verbose_details: "--verbose     verbose mode, print processing details"
    _debug_information: "--debug       debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger\\n"
    tests_to_run: "names of tests to run (default: all)"
  }
  output {
    File out_stdout = stdout()
  }
}