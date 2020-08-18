class: CommandLineTool
id: ../../../_gd2togif.cwl
inputs:
- id: gd_two_to_gif
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename_dot_gd_two
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: filename_do_tgif
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- _gd2togif
