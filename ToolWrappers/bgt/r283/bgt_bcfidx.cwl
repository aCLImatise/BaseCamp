class: CommandLineTool
id: bgt_bcfidx.cwl
inputs:
- id: in_s
  doc: ''
  type: long
  inputBinding:
    prefix: -s
- id: in_in_dot_bcf
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
- bgt
- bcfidx
