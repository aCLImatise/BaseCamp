class: CommandLineTool
id: generatemigrationtrees.cwl
inputs:
- id: in_anatomical_sites
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/machina:1.2--h176a8bc_1
cwlVersion: v1.1
baseCommand:
- generatemigrationtrees
