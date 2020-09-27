class: CommandLineTool
id: label_analysis_run_post_install_tests.bats.cwl
inputs:
- id: in_count
  doc: Count the number of test cases without running any tests
  type: boolean
  inputBinding:
    prefix: --count
- id: in_pretty
  doc: Show results in pretty format (default for terminals)
  type: boolean
  inputBinding:
    prefix: --pretty
- id: in_tap
  doc: Show results in TAP format
  type: boolean
  inputBinding:
    prefix: --tap
- id: in_bats
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- label_analysis_run_post_install_tests.bats
