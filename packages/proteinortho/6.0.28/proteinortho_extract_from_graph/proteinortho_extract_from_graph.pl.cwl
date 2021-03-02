class: CommandLineTool
id: proteinortho_extract_from_graph.pl.cwl
inputs:
- id: in_protein_ortho_table
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
  dockerPull: quay.io/biocontainers/proteinortho:6.0.28--hfd40d39_0
cwlVersion: v1.1
baseCommand:
- proteinortho_extract_from_graph.pl
