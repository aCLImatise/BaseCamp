class: CommandLineTool
id: seqmagick_help.cwl
inputs:
- id: in_action
  doc: 'optional arguments:'
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
- seqmagick
- help
