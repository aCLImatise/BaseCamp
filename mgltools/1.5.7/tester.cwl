#!/usr/bin/env cwl-runner

baseCommand:
- tester
class: CommandLineTool
cwlVersion: v1.0
id: tester
inputs:
- doc: quiet
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: verbose, default behavior
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: noisy
  id: noisy
  inputBinding:
    prefix: --noisy
  type: boolean
- doc: option to get tests from package recursively (default=false)
  id: recursive
  inputBinding:
    prefix: --recursive
  type: boolean
- doc: option to specify the name of the directory containing the tests (default='Tests')
  id: testdir
  inputBinding:
    prefix: --testdir
  type: string
- doc: option to specify the prefix a method or a function needs, to be included in
    the list of tests. (default='test_')
  id: func_prefix
  inputBinding:
    prefix: --funcPrefix
  type: string
- doc: option to specify the prefix a test module needs, to be included in the list
    of tests. (default= no prefix)
  id: mod_prefix
  inputBinding:
    prefix: --modPrefix
  type: string
- doc: name of an output file
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: option to specify whether or not to run each test module in a subprocess (default=False)
  id: subprocess
  inputBinding:
    prefix: --subprocess
  type: boolean
- doc: option to specify whether or not a report file will be created. When the option
    is given no report will be created otherwise a report will be created in a TESTREPORT
    subdirectory. (default=a report will be created)
  id: no_report
  inputBinding:
    prefix: --noreport
  type: boolean
- doc: option to specify whether or not the tester should exit after the first failed
    test. (default=False)
  id: exit_on_fail
  inputBinding:
    prefix: --exitOnFail
  type: boolean
