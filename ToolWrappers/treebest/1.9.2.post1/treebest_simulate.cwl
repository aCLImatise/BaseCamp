class: CommandLineTool
id: treebest_simulate.cwl
inputs:
- id: in_duplication_probability
  doc: duplication probability [0.05]
  type: double
  inputBinding:
    prefix: -d
- id: in_loss_probability
  doc: loss probability [0.01]
  type: double
  inputBinding:
    prefix: -l
- id: in_loss_probability_duplication
  doc: loss probability after duplication [0.25]
  type: double
  inputBinding:
    prefix: -p
- id: in_max_height
  doc: max height [0.25]
  type: long
  inputBinding:
    prefix: -m
- id: in_show_internal_name
  doc: not show internal name
  type: boolean
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- treebest
- simulate
