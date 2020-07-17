class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gomo_highlight.cwl
inputs:
- id: go_dag
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gomo_xml
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gomo_highlight
