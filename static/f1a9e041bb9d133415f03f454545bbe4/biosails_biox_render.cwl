class: CommandLineTool
id: biosails_biox_render.py.cwl
inputs:
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: j
  doc: ''
  type: string
  inputBinding:
    prefix: -j
outputs: []
cwlVersion: v1.1
baseCommand:
- biosails-biox-render.py
