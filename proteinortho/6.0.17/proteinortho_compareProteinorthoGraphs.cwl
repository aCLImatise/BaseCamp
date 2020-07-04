class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/proteinortho_compareProteinorthoGraphs.pl.cwl
inputs:
- id: file_a
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_b
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- proteinortho_compareProteinorthoGraphs.pl
