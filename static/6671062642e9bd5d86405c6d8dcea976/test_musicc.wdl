version 1.0

task TestMusicc.py {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? locals
    Boolean? fail_fast
    Boolean? catch
    Boolean? buffer
    String tests
  }
  command <<<
    test_musicc.py \
      ~{tests} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--locals" false="" locals} \
      ~{true="--failfast" false="" fail_fast} \
      ~{true="--catch" false="" catch} \
      ~{true="--buffer" false="" buffer}
  >>>
  parameter_meta {
    verbose: "Verbose output"
    quiet: "Quiet output"
    locals: "Show local variables in tracebacks"
    fail_fast: "Stop on first fail or error"
    catch: "Catch Ctrl-C and display results so far"
    buffer: "Buffer stdout and stderr during tests"
    tests: "a list of any number of test modules, classes and test methods."
  }
}