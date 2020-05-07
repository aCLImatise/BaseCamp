class: CommandLineTool
id: sonicparanoid_get_test_data.cwl
inputs:
- id: output_directory
  doc: The directory in which the test data will be stored.
  type: string
  inputBinding:
    prefix: --output-directory
- id: debug
  doc: Output debug information.
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- sonicparanoid-get-test-data
