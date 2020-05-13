class: CommandLineTool
id: coverage.cwl
inputs:
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: select
  doc: ''
  type: string
  inputBinding:
    prefix: --select
outputs: []
cwlVersion: v1.1
baseCommand:
- coverage
