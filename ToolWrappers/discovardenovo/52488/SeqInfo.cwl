class: CommandLineTool
id: SeqInfo.cwl
inputs:
- id: in_arg_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SeqInfo
