class: CommandLineTool
id: mixed_model.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nanosim:2.6.0--0
cwlVersion: v1.1
baseCommand:
- mixed_model.py
