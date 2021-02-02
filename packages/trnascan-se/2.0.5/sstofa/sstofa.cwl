class: CommandLineTool
id: sstofa.cwl
inputs:
- id: in_sec_struct_file
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
- sstofa
