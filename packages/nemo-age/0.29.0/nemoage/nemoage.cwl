class: CommandLineTool
id: nemoage.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nemo-age:0.29.0--h9e03d57_0
cwlVersion: v1.1
baseCommand:
- nemoage
