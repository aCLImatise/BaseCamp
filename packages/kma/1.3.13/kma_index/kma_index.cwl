class: CommandLineTool
id: kma_index.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kma:1.3.13--hed695b0_0
cwlVersion: v1.1
baseCommand:
- kma_index
