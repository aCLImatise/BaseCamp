class: CommandLineTool
id: proteinortho2html.pl.cwl
inputs:
- id: in_my_project_dot_protein_ortho
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
  dockerPull: quay.io/biocontainers/proteinortho:6.0.30--hb0e25da_0
cwlVersion: v1.1
baseCommand:
- proteinortho2html.pl
