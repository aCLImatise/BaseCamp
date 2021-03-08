class: CommandLineTool
id: integration_test.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/irida-uploader:0.6.0--py36_0
cwlVersion: v1.1
baseCommand:
- integration-test
