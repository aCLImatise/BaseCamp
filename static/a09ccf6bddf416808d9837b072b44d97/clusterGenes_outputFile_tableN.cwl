class: CommandLineTool
id: clusterGenes_outputFile_tableN.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: table_n
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- clusterGenes
- outputFile
- tableN
