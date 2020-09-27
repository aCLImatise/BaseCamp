version 1.0

task Tester {
  input {
    Boolean? quiet
    Boolean? verbose
    Boolean? noisy
    Boolean? recursive
    Directory? testdir
    String? func_prefix
    String? mod_prefix
    File? name_output_file
    Boolean? subprocess
    Boolean? no_report
    Boolean? exit_on_fail
  }
  command <<<
    tester \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (noisy) then "--noisy" else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if defined(testdir) then ("--testdir " +  '"' + testdir + '"') else ""} \
      ~{if defined(func_prefix) then ("--funcPrefix " +  '"' + func_prefix + '"') else ""} \
      ~{if defined(mod_prefix) then ("--modPrefix " +  '"' + mod_prefix + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""} \
      ~{if (subprocess) then "--subprocess" else ""} \
      ~{if (no_report) then "--noreport" else ""} \
      ~{if (exit_on_fail) then "--exitOnFail" else ""}
  >>>
  parameter_meta {
    quiet: "quiet"
    verbose: "verbose, default behavior"
    noisy: "noisy"
    recursive: "option to get tests from package recursively\\n(default=false)"
    testdir: "option to specify the name of the directory containing\\nthe tests (default='Tests')"
    func_prefix: "option to specify the prefix a method or a function\\nneeds, to be included in the list of tests.\\n(default='test_')"
    mod_prefix: "option to specify the prefix a test module needs, to\\nbe included in the list of tests. (default= no prefix)"
    name_output_file: "name of an output file"
    subprocess: "option to specify whether or not to run each test\\nmodule in a subprocess (default=False)"
    no_report: "option to specify whether or not a report file will be\\ncreated. When the option is given no report will be\\ncreated otherwise a report will be created in a\\nTESTREPORT subdirectory. (default=a report will be\\ncreated)"
    exit_on_fail: "option to specify whether or not the tester should\\nexit after the first failed test. (default=False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}