version 1.0

task Tester {
  input {
    Boolean? quiet
    Boolean? verbose
    Boolean? noisy
    Boolean? recursive
    String? testdir
    String? func_prefix
    String? mod_prefix
    String? name_output_file
    Boolean? subprocess
    Boolean? no_report
    Boolean? exit_on_fail
  }
  command <<<
    tester \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--noisy" false="" noisy} \
      ~{true="--recursive" false="" recursive} \
      ~{if defined(testdir) then ("--testdir " +  '"' + testdir + '"') else ""} \
      ~{if defined(func_prefix) then ("--funcPrefix " +  '"' + func_prefix + '"') else ""} \
      ~{if defined(mod_prefix) then ("--modPrefix " +  '"' + mod_prefix + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""} \
      ~{true="--subprocess" false="" subprocess} \
      ~{true="--noreport" false="" no_report} \
      ~{true="--exitOnFail" false="" exit_on_fail}
  >>>
  parameter_meta {
    quiet: "quiet"
    verbose: "verbose, default behavior"
    noisy: "noisy"
    recursive: "option to get tests from package recursively (default=false)"
    testdir: "option to specify the name of the directory containing the tests (default='Tests')"
    func_prefix: "option to specify the prefix a method or a function needs, to be included in the list of tests. (default='test_')"
    mod_prefix: "option to specify the prefix a test module needs, to be included in the list of tests. (default= no prefix)"
    name_output_file: "name of an output file"
    subprocess: "option to specify whether or not to run each test module in a subprocess (default=False)"
    no_report: "option to specify whether or not a report file will be created. When the option is given no report will be created otherwise a report will be created in a TESTREPORT subdirectory. (default=a report will be created)"
    exit_on_fail: "option to specify whether or not the tester should exit after the first failed test. (default=False)"
  }
}