class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/trimmomatic.cwl
inputs:
- id: version
  doc: ''
  type: boolean
  inputBinding:
    prefix: -version
- id: threads
  doc: ''
  type: string
  inputBinding:
    prefix: -threads
- id: pe
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- trimmomatic
