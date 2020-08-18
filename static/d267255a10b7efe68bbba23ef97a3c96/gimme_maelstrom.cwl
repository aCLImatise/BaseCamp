class: CommandLineTool
id: ../../../gimme_maelstrom.cwl
inputs:
- id: h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: gimme
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: subcommand
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: maelstrom
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- gimme
- maelstrom
