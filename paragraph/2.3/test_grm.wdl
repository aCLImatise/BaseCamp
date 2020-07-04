version 1.0

task TestGrm {
  input {
    Boolean? g_test_also_run_disabled_tests
    Boolean? g_test_break_on_failure
    Boolean? g_test_throw_on_failure
    String? g_test_catch_exceptions
  }
  command <<<
    test_grm \
      ~{true="--gtest_also_run_disabled_tests" false="" g_test_also_run_disabled_tests} \
      ~{true="--gtest_break_on_failure" false="" g_test_break_on_failure} \
      ~{true="--gtest_throw_on_failure" false="" g_test_throw_on_failure} \
      ~{if defined(g_test_catch_exceptions) then ("--gtest_catch_exceptions " +  '"' + g_test_catch_exceptions + '"') else ""}
  >>>
  parameter_meta {
    g_test_also_run_disabled_tests: "Run all disabled tests too."
    g_test_break_on_failure: "Turn assertion failures into debugger break-points."
    g_test_throw_on_failure: "Turn assertion failures into C++ exceptions."
    g_test_catch_exceptions: "Do not report exceptions as test failures. Instead, allow them to crash the program or throw a pop-up (on Windows)."
  }
}