class: CommandLineTool
id: bzip2recover.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bzip2:1.0.8
cwlVersion: v1.1
baseCommand:
- bzip2recover
