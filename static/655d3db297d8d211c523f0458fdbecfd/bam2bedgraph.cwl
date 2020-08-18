class: CommandLineTool
id: ../../../bam2bedgraph.cwl
inputs:
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: region
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2bedgraph
