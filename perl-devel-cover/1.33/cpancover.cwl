class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cpancover.cwl
inputs:
- id: info
  doc: ''
  type: boolean
  inputBinding:
    prefix: -info
- id: version
  doc: ''
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- cpancover
