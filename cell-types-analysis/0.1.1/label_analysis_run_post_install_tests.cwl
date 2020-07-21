class: CommandLineTool
id: ../../../label_analysis_run_post_install_tests.sh.cwl
inputs:
- id: run_post_install_tests_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: action
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: use_existing_outputs
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- label_analysis_run_post_install_tests.sh
