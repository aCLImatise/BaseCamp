class: CommandLineTool
id: data_import_post_install_tests.sh.cwl
inputs:
- id: in_garnett_cli_post_install_tests_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_action
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_use_existing_outputs
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/atlas-data-import:0.0.11--0
cwlVersion: v1.1
baseCommand:
- data_import_post_install_tests.sh
