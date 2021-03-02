class: CommandLineTool
id: msi_time_it.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msi:0.3.5--1
cwlVersion: v1.1
baseCommand:
- msi_time_it
