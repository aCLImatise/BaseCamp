class: CommandLineTool
id: seqmerge_INPUT.cwl
inputs:
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -s
- id: in_output
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
- seqmerge
- INPUT
