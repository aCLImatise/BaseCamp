class: CommandLineTool
id: immune_ml_quickstart.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/immuneml:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- immune-ml-quickstart
