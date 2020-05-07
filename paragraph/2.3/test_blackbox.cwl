class: CommandLineTool
id: test_blackbox.cwl
inputs:
- id: g_test_also_run_disabled_tests
  doc: Run all disabled tests too.
  type: boolean
  inputBinding:
    prefix: --gtest_also_run_disabled_tests
outputs: []
cwlVersion: v1.1
baseCommand:
- test_blackbox
