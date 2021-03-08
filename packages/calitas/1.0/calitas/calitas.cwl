class: CommandLineTool
id: calitas.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/calitas:1.0--0
cwlVersion: v1.1
baseCommand:
- calitas
