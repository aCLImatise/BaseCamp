class: CommandLineTool
id: ../../../halAlignmentDepth.cwl
inputs:
- id: hal_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- halAlignmentDepth
