class: CommandLineTool
id: exomiser_rest_prioritiser.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/exomiser-rest-prioritiser:12.1.0--1
cwlVersion: v1.1
baseCommand:
- exomiser-rest-prioritiser
