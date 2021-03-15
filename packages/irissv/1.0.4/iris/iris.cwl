class: CommandLineTool
id: iris.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/irissv:1.0.4--1
cwlVersion: v1.1
baseCommand:
- iris
