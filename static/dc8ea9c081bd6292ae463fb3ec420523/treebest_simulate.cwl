class: CommandLineTool
id: ../../../treebest_simulate.cwl
inputs:
- id: duplication_probability
  doc: duplication probability [0.05]
  type: string
  inputBinding:
    prefix: -d
- id: loss_probability
  doc: loss probability [0.01]
  type: string
  inputBinding:
    prefix: -l
- id: loss_probability_duplication
  doc: loss probability after duplication [0.25]
  type: string
  inputBinding:
    prefix: -p
- id: max_height
  doc: max height [0.25]
  type: string
  inputBinding:
    prefix: -m
- id: show_internal_name
  doc: not show internal name
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- simulate
