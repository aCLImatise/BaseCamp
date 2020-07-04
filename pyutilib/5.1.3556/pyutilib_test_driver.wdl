version 1.0

task PyutilibTestDriver {
  input {
    Boolean? debug
    Boolean? verbose
    Boolean? quiet
    Boolean? fail_fast
    Boolean? catch
    Boolean? buffer
    String? category
    Boolean? help_suites
    String? help_tests
    Boolean? help_categories
  }
  command <<<
    pyutilib_test_driver \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--failfast" false="" fail_fast} \
      ~{true="--catch" false="" catch} \
      ~{true="--buffer" false="" buffer} \
      ~{if defined(category) then ("--category " +  '"' + category + '"') else ""} \
      ~{true="--help-suites" false="" help_suites} \
      ~{if defined(help_tests) then ("--help-tests " +  '"' + help_tests + '"') else ""} \
      ~{true="--help-categories" false="" help_categories}
  >>>
  parameter_meta {
    debug: "Set debugging flag"
    verbose: "Verbose output"
    quiet: "Minimal output"
    fail_fast: "Stop on first failure"
    catch: "Catch control-C and display results"
    buffer: "Buffer stdout and stderr durring test runs"
    category: "Define a list of categories that filter the execution of test suites"
    help_suites: "Print the test suites that can be executed"
    help_tests: "Print the tests in the specified test suite"
    help_categories: "Print the test suite categories that can be specified"
  }
}