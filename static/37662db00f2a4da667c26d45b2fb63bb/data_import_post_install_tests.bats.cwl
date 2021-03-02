class: CommandLineTool
id: data_import_post_install_tests.bats.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/atlas-data-import:0.0.11--0
cwlVersion: v1.1
baseCommand:
- data_import_post_install_tests.bats
