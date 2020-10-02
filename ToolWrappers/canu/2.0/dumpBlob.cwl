class: CommandLineTool
id: dumpBlob.cwl
inputs:
- id: in_b
  doc: ''
  type: File
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dumpBlob
