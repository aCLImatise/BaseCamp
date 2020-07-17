class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/_bdftogd.cwl
inputs:
- id: bdf_to_gd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fontname
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- _bdftogd
