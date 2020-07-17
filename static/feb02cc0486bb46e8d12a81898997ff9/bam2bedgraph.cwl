class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam2bedgraph.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: cr_vertical_line_b
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: am
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2bedgraph
