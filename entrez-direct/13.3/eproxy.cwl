class: CommandLineTool
id: eproxy.cwl
inputs:
- id: alias
  doc: File of aliases
  type: boolean
  inputBinding:
    prefix: -alias
- id: pipe
  doc: Read aliases from stdin
  type: boolean
  inputBinding:
    prefix: -pipe
outputs: []
cwlVersion: v1.1
baseCommand:
- eproxy
