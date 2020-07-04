class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gdalmanage.cwl
inputs:
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: u
  doc: ''
  type: boolean
  inputBinding:
    prefix: -u
- id: identify
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gdalmanage
