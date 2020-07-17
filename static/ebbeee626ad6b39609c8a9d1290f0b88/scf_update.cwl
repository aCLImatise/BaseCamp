class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/scf_update.cwl
inputs:
- id: v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: source
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: destination
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- scf_update
