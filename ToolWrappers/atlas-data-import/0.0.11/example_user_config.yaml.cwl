class: CommandLineTool
id: example_user_config.yaml.cwl
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
- example_user_config.yaml
