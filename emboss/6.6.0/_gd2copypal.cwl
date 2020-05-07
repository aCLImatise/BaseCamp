class: CommandLineTool
id: _gd2copypal.cwl
inputs:
- id: gd2copypal
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: palette_file_gd2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: filename_gd2
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- _gd2copypal
