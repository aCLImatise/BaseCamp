class: CommandLineTool
id: simkaMinCore_info.cwl
inputs:
- id: in_in
  doc: '(1 arg) :    filename to a sketch file'
  type: boolean
  inputBinding:
    prefix: -in
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- simkaMinCore
- info
