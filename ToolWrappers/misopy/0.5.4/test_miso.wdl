version 1.0

task TestMiso {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? fail_fast
    Boolean? catch
    Boolean? buffer
    String test_miso
  }
  command <<<
    test_miso \
      ~{test_miso} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (fail_fast) then "--failfast" else ""} \
      ~{if (catch) then "--catch" else ""} \
      ~{if (buffer) then "--buffer" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Verbose output"
    quiet: "Minimal output"
    fail_fast: "Stop on first failure"
    catch: "Catch control-C and display results"
    buffer: "Buffer stdout and stderr during test runs"
    test_miso: "- run default set of tests"
  }
  output {
    File out_stdout = stdout()
  }
}