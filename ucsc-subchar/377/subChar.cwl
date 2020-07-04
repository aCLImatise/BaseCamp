class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/subChar.cwl
inputs:
- id: old_char
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: new_char
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- subChar
