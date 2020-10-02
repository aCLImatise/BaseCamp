class: CommandLineTool
id: pickBestPair.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_two
  doc: ''
  type: long
  inputBinding:
    prefix: '-2'
- id: in_one
  doc: ''
  type: long
  inputBinding:
    prefix: '-1'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pickBestPair
