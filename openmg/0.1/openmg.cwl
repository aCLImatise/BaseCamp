class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/openmg.cwl
inputs:
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: ec
  doc: ''
  type: string
  inputBinding:
    prefix: -ec
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- openmg
