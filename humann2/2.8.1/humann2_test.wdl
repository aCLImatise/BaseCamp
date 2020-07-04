version 1.0

task Humann2Test {
  input {
    Boolean? run_functional_tests_tools
    Boolean? run_functional_tests_end_to_end
    Boolean? bypass_unit_tests
    Boolean? run_all_tests
  }
  command <<<
    humann2_test \
      ~{true="--run-functional-tests-tools" false="" run_functional_tests_tools} \
      ~{true="--run-functional-tests-end-to-end" false="" run_functional_tests_end_to_end} \
      ~{true="--bypass-unit-tests" false="" bypass_unit_tests} \
      ~{true="--run-all-tests" false="" run_all_tests}
  >>>
  parameter_meta {
    run_functional_tests_tools: "run the functional tests for tools"
    run_functional_tests_end_to_end: "run the humann2 end to end functional tests"
    bypass_unit_tests: "do not run the unit tests"
    run_all_tests: "run all tests"
  }
}