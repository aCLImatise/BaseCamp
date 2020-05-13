class: CommandLineTool
id: tgTigDisplay.cwl
inputs:
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -S
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- tgTigDisplay
