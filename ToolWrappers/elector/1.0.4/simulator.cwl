class: CommandLineTool
id: simulator.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/elector:1.0.4--py36hf0b53f7_1
cwlVersion: v1.1
baseCommand:
- simulator
