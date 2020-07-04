class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ncbitk.cwl
inputs:
- id: status
  doc: Show the current status of your genome collection
  type: boolean
  inputBinding:
    prefix: --status
- id: genbank
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: species
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ncbitk
