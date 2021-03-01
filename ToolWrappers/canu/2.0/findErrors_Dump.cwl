class: CommandLineTool
id: findErrors_Dump.cwl
inputs:
- id: in_r
  doc: ''
  type: File?
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- findErrors-Dump
