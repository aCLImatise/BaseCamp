class: CommandLineTool
id: submission_tool_validator.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/submission-tool-validator:1.0.4--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- submission-tool-validator
