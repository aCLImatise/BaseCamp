class: CommandLineTool
id: ../../../reportAlignmentDifferences.cwl
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
- id: report_alignment_differences
  doc: -i Q.best.sim4db -o Q
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- reportAlignmentDifferences
