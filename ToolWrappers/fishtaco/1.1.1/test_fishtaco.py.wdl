version 1.0

task TestFishtacopy {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? locals
    Boolean? fail_fast
    Boolean? catch
    Boolean? buffer
    String tests
    String methods_dot
    String test_fish_taco_do_tpy
  }
  command <<<
    test_fishtaco_py \
      ~{tests} \
      ~{methods_dot} \
      ~{test_fish_taco_do_tpy} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (locals) then "--locals" else ""} \
      ~{if (fail_fast) then "--failfast" else ""} \
      ~{if (catch) then "--catch" else ""} \
      ~{if (buffer) then "--buffer" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Verbose output"
    quiet: "Quiet output"
    locals: "Show local variables in tracebacks"
    fail_fast: "Stop on first fail or error"
    catch: "Catch Ctrl-C and display results so far"
    buffer: "Buffer stdout and stderr during tests"
    tests: "a list of any number of test modules, classes and test"
    methods_dot: "optional arguments:"
    test_fish_taco_do_tpy: "- run default set of tests"
  }
  output {
    File out_stdout = stdout()
  }
}