#!/usr/bin/env cwl-runner

baseCommand:
- kneaddata_test
class: CommandLineTool
cwlVersion: v1.0
id: kneaddata_test
inputs:
- doc: do not run the kneaddata end to end functional tests
  id: bypass_functional_tests
  inputBinding:
    prefix: --bypass-functional-tests
  type: boolean
- doc: do not run the unit tests
  id: bypass_unit_tests
  inputBinding:
    prefix: --bypass-unit-tests
  type: boolean
