class: CommandLineTool
id: ../../../endsInLf.cwl
inputs:
- id: in_zero_ok
  doc: ''
  type: boolean
  inputBinding:
    prefix: -zeroOk
- id: in_file
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
- endsInLf
