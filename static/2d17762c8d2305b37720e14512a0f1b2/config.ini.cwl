class: CommandLineTool
id: config.ini.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sensv:1.0.4--h2e03b76_0
cwlVersion: v1.1
baseCommand:
- config.ini
