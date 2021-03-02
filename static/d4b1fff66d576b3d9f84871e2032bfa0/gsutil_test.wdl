version 1.0

task GsutilTest {
  input {
    Boolean? run_tests_uscentral
    Boolean? output_coverage_information
    Boolean? exit_first_sequential
    Boolean? list_available_tests
    Int? run_most_n
    Boolean? run_tests_s
    Boolean? only_run_unit
  }
  command <<<
    gsutil test \
      ~{if (run_tests_uscentral) then "-b" else ""} \
      ~{if (output_coverage_information) then "-c" else ""} \
      ~{if (exit_first_sequential) then "-f" else ""} \
      ~{if (list_available_tests) then "-l" else ""} \
      ~{if defined(run_most_n) then ("-p " +  '"' + run_most_n + '"') else ""} \
      ~{if (run_tests_s) then "-s" else ""} \
      ~{if (only_run_unit) then "-u" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    run_tests_uscentral: "Run tests against multi-regional US buckets. By default,\\ntests run against regional buckets in us-central1."
    output_coverage_information: "Output coverage information."
    exit_first_sequential: "Exit on first sequential test failure."
    list_available_tests: "List available tests."
    run_most_n: "Run at most N tests in parallel. The default value is 5."
    run_tests_s: "Run tests against S3 instead of GS."
    only_run_unit: "Only run unit tests."
  }
  output {
    File out_stdout = stdout()
  }
}