class: CommandLineTool
id: extract_fastqread.cwl
inputs:
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- extract_fastqread
