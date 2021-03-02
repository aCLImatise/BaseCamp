class: CommandLineTool
id: paraclu.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/paraclu:10--he513fc3_0
cwlVersion: v1.1
baseCommand:
- paraclu
