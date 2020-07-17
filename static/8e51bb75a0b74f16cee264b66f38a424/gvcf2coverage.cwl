class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gvcf2coverage.cwl
inputs:
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- gvcf2coverage
