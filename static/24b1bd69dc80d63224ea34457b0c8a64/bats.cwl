class: CommandLineTool
id: bats.cwl
inputs:
- id: in_count
  doc: Count the number of test cases without running any tests
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_pretty
  doc: Show results in pretty format (default for terminals)
  type: boolean?
  inputBinding:
    prefix: --pretty
- id: in_tap
  doc: Show results in TAP format
  type: boolean?
  inputBinding:
    prefix: --tap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bats
