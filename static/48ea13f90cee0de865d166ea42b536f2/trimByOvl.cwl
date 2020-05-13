class: CommandLineTool
id: trimByOvl.cwl
inputs:
- id: file_ovl
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- trimByOvl
