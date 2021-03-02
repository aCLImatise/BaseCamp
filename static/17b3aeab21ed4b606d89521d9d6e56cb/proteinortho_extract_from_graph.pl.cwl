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
hints: []
cwlVersion: v1.1
baseCommand:
- proteinortho_extract_from_graph.pl
