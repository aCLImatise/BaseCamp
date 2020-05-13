version 1.0

task TestBlackbox {
  input {
    Boolean gGTestAlsoRunDisabledTests
  }
  command <<<
    test_blackbox \
      ~{true="--gtest_also_run_disabled_tests" false="" gGTestAlsoRunDisabledTests}
  >>>
}