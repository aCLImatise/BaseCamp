class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tensorboard.cwl
inputs:
- id: reload_interval
  doc: How often the backend should load more data.
  type: string
  inputBinding:
    prefix: --reload_interval
- id: logdir
  doc: ''
  type: string
  inputBinding:
    prefix: --logdir
- id: var_2
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: no_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nodebug
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tensorboard
