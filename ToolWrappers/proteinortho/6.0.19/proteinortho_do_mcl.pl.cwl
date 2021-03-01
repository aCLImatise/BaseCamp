class: CommandLineTool
id: proteinortho_do_mcl.pl.cwl
inputs:
- id: in_cores
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_blast_graph_one
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- proteinortho_do_mcl.pl
