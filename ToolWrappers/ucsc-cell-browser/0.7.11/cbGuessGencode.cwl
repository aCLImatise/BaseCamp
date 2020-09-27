class: CommandLineTool
id: cbGuessGencode.cwl
inputs:
- id: in_debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cbGuessGencode
