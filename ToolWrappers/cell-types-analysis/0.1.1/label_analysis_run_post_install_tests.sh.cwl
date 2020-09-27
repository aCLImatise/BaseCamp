class: CommandLineTool
id: label_analysis_run_post_install_tests.sh.cwl
inputs:
- id: in_run_post_install_tests_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_action
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_use_existing_outputs
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- label_analysis_run_post_install_tests.sh
