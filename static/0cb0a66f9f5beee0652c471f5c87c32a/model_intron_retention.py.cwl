class: CommandLineTool
id: model_intron_retention.py.cwl
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
- model_intron_retention.py
