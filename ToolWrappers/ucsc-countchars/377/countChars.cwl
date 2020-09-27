class: CommandLineTool
id: countChars.cwl
inputs:
- id: in_char
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- countChars
