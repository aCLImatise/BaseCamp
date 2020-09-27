class: CommandLineTool
id: keyFreq.cwl
inputs:
- id: in_p
  doc: ''
  type: long
  inputBinding:
    prefix: -p
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- keyFreq
