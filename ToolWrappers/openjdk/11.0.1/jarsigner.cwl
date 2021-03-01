class: CommandLineTool
id: jarsigner.cwl
inputs:
- id: in_jar_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_alias
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jarsigner
