version 1.0

task KneaddataTest {
  input {
    Boolean? bypass_functional_tests
    Boolean? bypass_unit_tests
  }
  command <<<
    kneaddata_test \
      ~{true="--bypass-functional-tests" false="" bypass_functional_tests} \
      ~{true="--bypass-unit-tests" false="" bypass_unit_tests}
  >>>
  parameter_meta {
    bypass_functional_tests: "do not run the kneaddata end to end functional tests"
    bypass_unit_tests: "do not run the unit tests"
  }
}