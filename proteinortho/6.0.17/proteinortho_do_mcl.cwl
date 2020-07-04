class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/proteinortho_do_mcl.pl.cwl
inputs:
- id: cores
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: blast_graph_one
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- proteinortho_do_mcl.pl
