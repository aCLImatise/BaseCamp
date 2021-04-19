class: CommandLineTool
id: scanpy.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scanpy:1.7.2--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- scanpy
