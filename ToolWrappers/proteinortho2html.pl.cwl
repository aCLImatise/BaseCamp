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
cwlVersion: v1.1
baseCommand:
- proteinortho2html.pl
