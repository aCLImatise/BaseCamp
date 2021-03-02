version 1.0

task RunGenomedataTestspy {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? fail_fast
    Boolean? catch
    Boolean? buffer
    String run_genome_data_tests_do_tpy
  }
  command <<<
    run_genomedata_tests_py \
      ~{run_genome_data_tests_do_tpy} \
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
    run_genome_data_tests_do_tpy: "- run default set of tests"
  }
  output {
    File out_stdout = stdout()
  }
}