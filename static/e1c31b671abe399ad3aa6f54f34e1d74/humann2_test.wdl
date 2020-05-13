version 1.0

task Humann2Test {
  input {
    Boolean runRunFunctionalTestsTools
    Boolean runRunFunctionalTestsEndToEnd
    Boolean bypassBypassUnitTests
    Boolean runRunAllTests
  }
  command <<<
    humann2_test \
      ~{true="--run-functional-tests-tools" false="" runRunFunctionalTestsTools} \
      ~{true="--run-functional-tests-end-to-end" false="" runRunFunctionalTestsEndToEnd} \
      ~{true="--bypass-unit-tests" false="" bypassBypassUnitTests} \
      ~{true="--run-all-tests" false="" runRunAllTests}
  >>>
}