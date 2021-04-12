class: CommandLineTool
id: proteinortho_graphMinusRemovegraph.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteinortho:6.0.29--hb0e25da_1
cwlVersion: v1.1
baseCommand:
- proteinortho_graphMinusRemovegraph
