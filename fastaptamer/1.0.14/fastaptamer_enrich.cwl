class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastaptamer_enrich.cwl
inputs:
- id: x
  doc: ''
  type: string
  inputBinding:
    prefix: -x
- id: y
  doc: ''
  type: string
  inputBinding:
    prefix: -y
- id: z
  doc: ''
  type: string
  inputBinding:
    prefix: -z
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- fastaptamer_enrich
