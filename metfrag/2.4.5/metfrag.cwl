class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/metfrag.cwl
inputs:
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: parameter_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- metfrag
