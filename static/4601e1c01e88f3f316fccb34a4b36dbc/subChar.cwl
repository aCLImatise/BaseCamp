class: CommandLineTool
id: subChar.cwl
inputs:
- id: in_old_char
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_new_char
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- subChar
