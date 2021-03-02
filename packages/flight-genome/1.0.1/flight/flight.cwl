class: CommandLineTool
id: flight.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/flight-genome:1.0.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- flight
