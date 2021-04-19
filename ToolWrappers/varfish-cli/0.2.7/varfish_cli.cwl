class: CommandLineTool
id: varfish_cli.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/varfish-cli:0.2.7--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- varfish-cli
