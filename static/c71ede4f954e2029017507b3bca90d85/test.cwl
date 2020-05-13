class: CommandLineTool
id: test.pyutilib.cwl
inputs:
- id: dirs
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dir
  doc: Top-level source directory where the tests are applied.
  type: string
  inputBinding:
    prefix: --dir
- id: all
  doc: All tests are executed.
  type: boolean
  inputBinding:
    prefix: --all
- id: category
  doc: Specify test categories.
  type: string
  inputBinding:
    prefix: --category
- id: coverage
  doc: Indicate that coverage information is collected
  type: boolean
  inputBinding:
    prefix: --coverage
- id: verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: output
  doc: Redirect output to a file
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- test.pyutilib
