version 1.0

task OfstdTests {
  input {
    Boolean listList
    Boolean exhaustiveExhaustive
    Boolean verboseVerbose
    String? testsTestsToRun
  }
  command <<<
    ofstd_tests \
      ~{testsTestsToRun} \
      ~{true="--list" false="" listList} \
      ~{true="--exhaustive" false="" exhaustiveExhaustive} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}