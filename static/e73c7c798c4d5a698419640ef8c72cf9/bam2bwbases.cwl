class: CommandLineTool
id: ../../../bam2bwbases.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: b_vertical_line_cr
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
- bam2bwbases
