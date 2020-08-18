class: CommandLineTool
id: ../../../novoutil_biseqstrandfixer.cwl
inputs:
- id: input_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- novoutil
- biseqstrandfixer
