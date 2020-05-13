class: CommandLineTool
id: tester.cwl
inputs:
- id: quiet
  doc: quiet
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: verbose, default behavior
  type: boolean
  inputBinding:
    prefix: --verbose
- id: noisy
  doc: noisy
  type: boolean
  inputBinding:
    prefix: --noisy
- id: recursive
  doc: option to get tests from package recursively (default=false)
  type: boolean
  inputBinding:
    prefix: --recursive
- id: testdir
  doc: option to specify the name of the directory containing the tests (default='Tests')
  type: string
  inputBinding:
    prefix: --testdir
- id: func_prefix
  doc: option to specify the prefix a method or a function needs, to be included in
    the list of tests. (default='test_')
  type: string
  inputBinding:
    prefix: --funcPrefix
- id: mod_prefix
  doc: option to specify the prefix a test module needs, to be included in the list
    of tests. (default= no prefix)
  type: string
  inputBinding:
    prefix: --modPrefix
- id: output
  doc: name of an output file
  type: string
  inputBinding:
    prefix: --output
- id: subprocess
  doc: option to specify whether or not to run each test module in a subprocess (default=False)
  type: boolean
  inputBinding:
    prefix: --subprocess
- id: no_report
  doc: option to specify whether or not a report file will be created. When the option
    is given no report will be created otherwise a report will be created in a TESTREPORT
    subdirectory. (default=a report will be created)
  type: boolean
  inputBinding:
    prefix: --noreport
- id: exit_on_fail
  doc: option to specify whether or not the tester should exit after the first failed
    test. (default=False)
  type: boolean
  inputBinding:
    prefix: --exitOnFail
outputs: []
cwlVersion: v1.1
baseCommand:
- tester
