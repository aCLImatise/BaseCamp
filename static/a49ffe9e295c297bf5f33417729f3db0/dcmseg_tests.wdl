version 1.0

task DcmsegTests {
  input {
    Boolean? list
    Boolean? exhaustive
    Boolean? arguments
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    Boolean? log_level
    Boolean? log_config
    String tests_to_run
  }
  command <<<
    dcmseg_tests \
      ~{tests_to_run} \
      ~{if (list) then "--list" else ""} \
      ~{if (exhaustive) then "--exhaustive" else ""} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (log_level) then "--log-level" else ""} \
      ~{if (log_config) then "--log-config" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list: "list available tests and exit"
    exhaustive: "also run extensive and slow tests"
    arguments: "print expanded command line arguments"
    quiet: "quiet mode, print no warnings and errors"
    verbose: "verbose mode, print processing details"
    debug: "debug mode, print debug information"
    log_level: "[l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    log_config: "[f]ilename: string\\nuse config file f for the logger\\n"
    tests_to_run: "names of tests to run (default: all)"
  }
  output {
    File out_stdout = stdout()
  }
}