version 1.0

task GsutilTest {
  input {
    Boolean? run_tests_multiregional
    Boolean? output_coverage_information
    Boolean? exit_first_sequential
    Boolean? list_available_tests
    String? run_most_n
    Boolean? run_tests_s
    Boolean? only_run_unit
  }
  command <<<
    gsutil test \
      ~{true="-b" false="" run_tests_multiregional} \
      ~{true="-c" false="" output_coverage_information} \
      ~{true="-f" false="" exit_first_sequential} \
      ~{true="-l" false="" list_available_tests} \
      ~{if defined(run_most_n) then ("-p " +  '"' + run_most_n + '"') else ""} \
      ~{true="-s" false="" run_tests_s} \
      ~{true="-u" false="" only_run_unit}
  >>>
  parameter_meta {
    run_tests_multiregional: "Run tests against multi-regional US buckets. By default, tests run against regional buckets in us-central1."
    output_coverage_information: "Output coverage information."
    exit_first_sequential: "Exit on first sequential test failure."
    list_available_tests: "List available tests."
    run_most_n: "Run at most N tests in parallel. The default value is 5."
    run_tests_s: "Run tests against S3 instead of GS."
    only_run_unit: "Only run unit tests."
  }
}