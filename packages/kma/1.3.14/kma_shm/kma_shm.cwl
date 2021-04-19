class: CommandLineTool
id: kma_shm.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kma:1.3.14--h5bf99c6_0
cwlVersion: v1.1
baseCommand:
- kma_shm
