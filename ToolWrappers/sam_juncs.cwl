class: CommandLineTool
id: sam_juncs.cwl
inputs:
- id: in_hits_dots_am
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
- sam_juncs
