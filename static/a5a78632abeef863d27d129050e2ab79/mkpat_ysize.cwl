class: CommandLineTool
id: mkpat_ysize.cwl
inputs:
- id: xsize
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ysize
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mkpat
- ysize
