version 1.0

task TestGrm {
  input {
    Boolean gGTestAlsoRunDisabledTests
  }
  command <<<
    test_grm \
      ~{true="--gtest_also_run_disabled_tests" false="" gGTestAlsoRunDisabledTests}
  >>>
}