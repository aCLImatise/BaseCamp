class: CommandLineTool
id: coordinate_batch.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/eukulele:1.0.4--pyhcb32578_0
cwlVersion: v1.1
baseCommand:
- coordinate_batch.sh
