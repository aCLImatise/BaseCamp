version 1.0

task Cwltest {
  input {
    File? test
    String? basedir
    Boolean? list_tests_then
    Int? run_specific_tests_format
    String? run_specific_tests_using
    String? tool
    Boolean? only_tools
    String? tags
    File? junit_xml
    File? junit_verbose
    String? test_arg
    Int? specifies_number_run
    Boolean? verbose
    String? classname
    Float? timeout
    Directory? badge_dir
  }
  command <<<
    cwltest \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if defined(basedir) then ("--basedir " +  '"' + basedir + '"') else ""} \
      ~{if (list_tests_then) then "-l" else ""} \
      ~{if defined(run_specific_tests_format) then ("-n " +  '"' + run_specific_tests_format + '"') else ""} \
      ~{if defined(run_specific_tests_using) then ("-s " +  '"' + run_specific_tests_using + '"') else ""} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""} \
      ~{if (only_tools) then "--only-tools" else ""} \
      ~{if defined(tags) then ("--tags " +  '"' + tags + '"') else ""} \
      ~{if defined(junit_xml) then ("--junit-xml " +  '"' + junit_xml + '"') else ""} \
      ~{if (junit_verbose) then "--junit-verbose" else ""} \
      ~{if defined(test_arg) then ("--test-arg " +  '"' + test_arg + '"') else ""} \
      ~{if defined(specifies_number_run) then ("-j " +  '"' + specifies_number_run + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(classname) then ("--classname " +  '"' + classname + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(badge_dir) then ("--badgedir " +  '"' + badge_dir + '"') else ""}
  >>>
  parameter_meta {
    test: "YAML file describing test cases"
    basedir: "Basedir to use for tests"
    list_tests_then: "List tests then exit"
    run_specific_tests_format: "Run specific tests, format is 1,3-6,9"
    run_specific_tests_using: "Run specific tests using their short names separated\\nby comma"
    tool: "CWL runner executable to use (default 'cwl-runner'"
    only_tools: "Only test CommandLineTools"
    tags: "Tags to be tested"
    junit_xml: "Path to JUnit xml file"
    junit_verbose: "Store more verbose output to JUnit xml file"
    test_arg: "==--cache-dir\\nAdditional argument given in test cases and required\\nprefix for tool runner."
    specifies_number_run: "Specifies the number of tests to run simultaneously\\n(defaults to one)."
    verbose: "More verbose output during test run."
    classname: "Specify classname for the Test Suite."
    timeout: "Time of execution in seconds after which the test will\\nbe skipped. Defaults to 600 seconds (10.0 minutes)."
    badge_dir: "Directory that stores JSON files for badges."
  }
  output {
    File out_stdout = stdout()
    File out_junit_verbose = "${in_junit_verbose}"
  }
}