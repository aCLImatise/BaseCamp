class: CommandLineTool
id: humann2_test.cwl
inputs:
- id: in_run_functional_tests_tools
  doc: run the functional tests for tools
  type: boolean
  inputBinding:
    prefix: --run-functional-tests-tools
- id: in_run_functional_tests_end_to_end
  doc: run the humann2 end to end functional tests
  type: boolean
  inputBinding:
    prefix: --run-functional-tests-end-to-end
- id: in_bypass_unit_tests
  doc: do not run the unit tests
  type: boolean
  inputBinding:
    prefix: --bypass-unit-tests
- id: in_run_all_tests
  doc: run all tests
  type: boolean
  inputBinding:
    prefix: --run-all-tests
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- humann2_test
