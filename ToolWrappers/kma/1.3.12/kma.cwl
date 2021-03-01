class: CommandLineTool
id: kma.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kma:1.3.12--hed695b0_0
cwlVersion: v1.1
baseCommand:
- kma
