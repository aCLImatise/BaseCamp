version 1.0

task Cwltest {
  input {
    String? test
    String? basedir
    Boolean? list_tests_exit
    String? run_specific_tests_format
    String? run_specific_tests_using
    String? tool
    Boolean? only_tools
    String? tags
    String? junit_xml
    Boolean? junit_verbose
    String? test_arg
    String? specifies_number_tests
    Boolean? verbose
    String? classname
    String? timeout
    String? badge_dir
  }
  command <<<
    cwltest \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if defined(basedir) then ("--basedir " +  '"' + basedir + '"') else ""} \
      ~{true="-l" false="" list_tests_exit} \
      ~{if defined(run_specific_tests_format) then ("-n " +  '"' + run_specific_tests_format + '"') else ""} \
      ~{if defined(run_specific_tests_using) then ("-s " +  '"' + run_specific_tests_using + '"') else ""} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""} \
      ~{true="--only-tools" false="" only_tools} \
      ~{if defined(tags) then ("--tags " +  '"' + tags + '"') else ""} \
      ~{if defined(junit_xml) then ("--junit-xml " +  '"' + junit_xml + '"') else ""} \
      ~{true="--junit-verbose" false="" junit_verbose} \
      ~{if defined(test_arg) then ("--test-arg " +  '"' + test_arg + '"') else ""} \
      ~{if defined(specifies_number_tests) then ("-j " +  '"' + specifies_number_tests + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(classname) then ("--classname " +  '"' + classname + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(badge_dir) then ("--badgedir " +  '"' + badge_dir + '"') else ""}
  >>>
  parameter_meta {
    test: "YAML file describing test cases"
    basedir: "Basedir to use for tests"
    list_tests_exit: "List tests then exit"
    run_specific_tests_format: "Run specific tests, format is 1,3-6,9"
    run_specific_tests_using: "Run specific tests using their short names separated by comma"
    tool: "CWL runner executable to use (default 'cwl-runner'"
    only_tools: "Only test CommandLineTools"
    tags: "Tags to be tested"
    junit_xml: "Path to JUnit xml file"
    junit_verbose: "Store more verbose output to JUnit xml file"
    test_arg: "==--cache-dir Additional argument given in test cases and required prefix for tool runner."
    specifies_number_tests: "Specifies the number of tests to run simultaneously (defaults to one)."
    verbose: "More verbose output during test run."
    classname: "Specify classname for the Test Suite."
    timeout: "Time of execution in seconds after which the test will be skipped. Defaults to 600 seconds (10.0 minutes)."
    badge_dir: "Directory that stores JSON files for badges."
  }
}