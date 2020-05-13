class: CommandLineTool
id: _gdcmpgif.cwl
inputs:
- id: gdc_mpg_if
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename_gif
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: filename_gif
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- _gdcmpgif
