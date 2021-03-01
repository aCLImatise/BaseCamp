class: CommandLineTool
id: scran_post_install_tests.sh.cwl
inputs:
- id: in_action
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_use_existing_outputs
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scran_post_install_tests.sh
