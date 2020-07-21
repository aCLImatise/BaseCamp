class: CommandLineTool
id: ../../../scpred_post_install_tests.sh.cwl
inputs:
- id: action
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: use_existing_outputs
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- scpred_post_install_tests.sh
