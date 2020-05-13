class: CommandLineTool
id: treebest_simulate.cwl
inputs:
- id: d
  doc: duplication probability [0.05]
  type: string
  inputBinding:
    prefix: -d
- id: l
  doc: loss probability [0.01]
  type: string
  inputBinding:
    prefix: -l
- id: p
  doc: loss probability after duplication [0.25]
  type: string
  inputBinding:
    prefix: -p
- id: m
  doc: max height [0.25]
  type: string
  inputBinding:
    prefix: -m
- id: n
  doc: not show internal name
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- simulate
