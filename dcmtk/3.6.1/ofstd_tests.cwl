class: CommandLineTool
id: ofstd_tests.cwl
inputs:
- id: tests_to_run
  doc: 'names of tests to run (default: all)'
  type: string
  inputBinding:
    position: 0
- id: list
  doc: list available tests and exit
  type: boolean
  inputBinding:
    prefix: --list
- id: exhaustive
  doc: also run extensive and slow tests
  type: boolean
  inputBinding:
    prefix: --exhaustive
- id: verbose
  doc: verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ofstd_tests
