class: CommandLineTool
id: hmmeralign_hmmfile.cwl
inputs:
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmeralign
- hmmfile
