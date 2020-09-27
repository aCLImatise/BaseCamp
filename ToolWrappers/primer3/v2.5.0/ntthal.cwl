class: CommandLineTool
id: ntthal.cwl
inputs:
- id: in_oligo
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ntthal
