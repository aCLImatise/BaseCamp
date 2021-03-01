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
      ~{if (run_functional_tests_tools) then "--run-functional-tests-tools" else ""} \
      ~{if (run_functional_tests_end_to_end) then "--run-functional-tests-end-to-end" else ""} \
      ~{if (bypass_unit_tests) then "--bypass-unit-tests" else ""} \
      ~{if (run_all_tests) then "--run-all-tests" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    run_functional_tests_tools: "run the functional tests for tools"
    run_functional_tests_end_to_end: "run the humann2 end to end functional tests"
    bypass_unit_tests: "do not run the unit tests"
    run_all_tests: "run all tests"
  }
  output {
    File out_stdout = stdout()
  }
}