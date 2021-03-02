class: CommandLineTool
id: ngsderive.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngsderive:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- ngsderive
