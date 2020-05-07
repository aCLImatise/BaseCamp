class: CommandLineTool
id: menepath.cwl
inputs:
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: min
  doc: ''
  type: boolean
  inputBinding:
    prefix: --min
- id: enumerate
  doc: ''
  type: boolean
  inputBinding:
    prefix: --enumerate
outputs: []
cwlVersion: v1.1
baseCommand:
- menepath
