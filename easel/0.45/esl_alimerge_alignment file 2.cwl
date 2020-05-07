class: CommandLineTool
id: esl_alimerge_alignment file 2.cwl
inputs:
- id: alignment_file_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment_file_2
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-alimerge
- alignment file 2
