class: CommandLineTool
id: bactopia.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bactopia:1.6.1--0
cwlVersion: v1.1
baseCommand:
- bactopia
