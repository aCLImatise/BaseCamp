class: CommandLineTool
id: ofstd_tests.cwl
inputs:
- id: in_list
  doc: list available tests and exit
  type: boolean
  inputBinding:
    prefix: --list
- id: in_exhaustive
  doc: also run extensive and slow tests
  type: boolean
  inputBinding:
    prefix: --exhaustive
- id: in_verbose
  doc: verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_tests_to_run
  doc: 'names of tests to run (default: all)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ofstd_tests
