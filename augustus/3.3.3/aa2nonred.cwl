class: CommandLineTool
id: ../../../aa2nonred.pl.cwl
inputs:
- id: input_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- aa2nonred.pl
