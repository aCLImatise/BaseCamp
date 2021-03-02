class: CommandLineTool
id: metadata_conda_debug.yaml.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/morpheus:287--0
cwlVersion: v1.1
baseCommand:
- metadata_conda_debug.yaml
