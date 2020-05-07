class: CommandLineTool
id: pyutilib_test_driver.cwl
inputs:
- id: debug
  doc: Set debugging flag
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Minimal output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: fail_fast
  doc: Stop on first failure
  type: boolean
  inputBinding:
    prefix: --failfast
- id: catch
  doc: Catch control-C and display results
  type: boolean
  inputBinding:
    prefix: --catch
- id: buffer
  doc: Buffer stdout and stderr durring test runs
  type: boolean
  inputBinding:
    prefix: --buffer
- id: category
  doc: Define a list of categories that filter the execution of test suites
  type: string
  inputBinding:
    prefix: --category
- id: help_suites
  doc: Print the test suites that can be executed
  type: boolean
  inputBinding:
    prefix: --help-suites
- id: help_tests
  doc: Print the tests in the specified test suite
  type: string
  inputBinding:
    prefix: --help-tests
- id: help_categories
  doc: Print the test suite categories that can be specified
  type: boolean
  inputBinding:
    prefix: --help-categories
outputs: []
cwlVersion: v1.1
baseCommand:
- pyutilib_test_driver
