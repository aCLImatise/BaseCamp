version 1.0

task TestMiso {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? fail_fast
    Boolean? catch
    Boolean? buffer
    String? test
  }
  command <<<
    test_miso \
      ~{test} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--failfast" false="" fail_fast} \
      ~{true="--catch" false="" catch} \
      ~{true="--buffer" false="" buffer}
  >>>
  parameter_meta {
    verbose: "Verbose output"
    quiet: "Minimal output"
    fail_fast: "Stop on first failure"
    catch: "Catch control-C and display results"
    buffer: "Buffer stdout and stderr during test runs"
    test: ""
  }
}