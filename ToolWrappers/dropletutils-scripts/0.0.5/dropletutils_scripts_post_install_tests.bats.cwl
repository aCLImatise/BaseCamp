class: CommandLineTool
id: dropletutils_scripts_post_install_tests.bats.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dropletutils-scripts:0.0.5--0
cwlVersion: v1.1
baseCommand:
- dropletutils-scripts-post-install-tests.bats
