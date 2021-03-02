class: CommandLineTool
id: pslivar.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/slivar:0.2.1--hecda079_0
cwlVersion: v1.1
baseCommand:
- pslivar
