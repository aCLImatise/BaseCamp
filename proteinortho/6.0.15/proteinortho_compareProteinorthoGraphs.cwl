class: CommandLineTool
id: proteinortho_compareProteinorthoGraphs.pl_FILE_B.cwl
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
- FILE_B
