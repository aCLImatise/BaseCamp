version 1.0

task KneaddataTest {
  input {
    Boolean bypassBypassFunctionalTests
    Boolean bypassBypassUnitTests
  }
  command <<<
    kneaddata_test \
      ~{true="--bypass-functional-tests" false="" bypassBypassFunctionalTests} \
      ~{true="--bypass-unit-tests" false="" bypassBypassUnitTests}
  >>>
}