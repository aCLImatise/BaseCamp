class: CommandLineTool
id: scmap_cli_post_install_tests.sh.cwl
inputs:
- id: in_sc_map_scripts_post_install_tests_dots_h
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
- scmap-cli-post-install-tests.sh
