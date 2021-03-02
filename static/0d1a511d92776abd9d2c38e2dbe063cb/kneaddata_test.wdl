version 1.0

task KneaddataTest {
  input {
    Boolean? bypass_functional_tests
    Boolean? bypass_unit_tests
  }
  command <<<
    kneaddata_test \
      ~{if (bypass_functional_tests) then "--bypass-functional-tests" else ""} \
      ~{if (bypass_unit_tests) then "--bypass-unit-tests" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bypass_functional_tests: "do not run the kneaddata end to end functional tests"
    bypass_unit_tests: "do not run the unit tests"
  }
  output {
    File out_stdout = stdout()
  }
}