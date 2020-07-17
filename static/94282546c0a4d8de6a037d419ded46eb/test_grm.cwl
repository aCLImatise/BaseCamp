class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/test_grm.cwl
inputs:
- id: g_test_also_run_disabled_tests
  doc: Run all disabled tests too.
  type: boolean
  inputBinding:
    prefix: --gtest_also_run_disabled_tests
- id: g_test_break_on_failure
  doc: Turn assertion failures into debugger break-points.
  type: boolean
  inputBinding:
    prefix: --gtest_break_on_failure
- id: g_test_throw_on_failure
  doc: Turn assertion failures into C++ exceptions.
  type: boolean
  inputBinding:
    prefix: --gtest_throw_on_failure
- id: g_test_catch_exceptions
  doc: Do not report exceptions as test failures. Instead, allow them to crash the
    program or throw a pop-up (on Windows).
  type: string
  inputBinding:
    prefix: --gtest_catch_exceptions
outputs: []
cwlVersion: v1.1
baseCommand:
- test_grm
