class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mglobrotamer.cwl
inputs:
- id: ob_rotamer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mglobrotamer
