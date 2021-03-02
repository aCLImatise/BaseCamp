class: CommandLineTool
id: get_test_data.R.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scpred-cli:0.1.0--1
cwlVersion: v1.1
baseCommand:
- get_test_data.R
