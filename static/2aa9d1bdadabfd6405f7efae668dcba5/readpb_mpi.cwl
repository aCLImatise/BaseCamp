class: CommandLineTool
id: readpb_mpi.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylobayes-mpi:1.8c--h78e549b_0
cwlVersion: v1.1
baseCommand:
- readpb_mpi
