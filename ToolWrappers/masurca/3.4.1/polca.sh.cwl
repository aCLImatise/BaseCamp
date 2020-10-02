class: CommandLineTool
id: polca.sh.cwl
inputs:
- id: in_r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- polca.sh
