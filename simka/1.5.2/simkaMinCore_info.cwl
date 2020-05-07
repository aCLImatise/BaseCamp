class: CommandLineTool
id: simkaMinCore_info.cwl
inputs:
- id: in
  doc: '(1 arg) :    filename to a sketch file'
  type: boolean
  inputBinding:
    prefix: -in
outputs: []
cwlVersion: v1.1
baseCommand:
- simkaMinCore
- info
