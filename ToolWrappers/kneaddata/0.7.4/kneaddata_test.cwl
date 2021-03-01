class: CommandLineTool
id: kneaddata_test.cwl
inputs:
- id: in_bypass_functional_tests
  doc: do not run the kneaddata end to end functional tests
  type: boolean?
  inputBinding:
    prefix: --bypass-functional-tests
- id: in_bypass_unit_tests
  doc: do not run the unit tests
  type: boolean?
  inputBinding:
    prefix: --bypass-unit-tests
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kneaddata_test
