class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/forge.cwl
inputs:
- id: boost
  doc: (file of ID <int>)
  type: File
  inputBinding:
    prefix: -boost
- id: ann
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dna
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- forge
