class: CommandLineTool
id: metadata_conda_debug.yaml.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gifrop:0.0.9--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- metadata_conda_debug.yaml
