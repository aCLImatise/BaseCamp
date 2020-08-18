class: CommandLineTool
id: ../../../_gd2copypal.cwl
inputs:
- id: gd_two_copy_pal
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: palette_file_dot_gd_two
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: filename_dot_gd_two
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- _gd2copypal
