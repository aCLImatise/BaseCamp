class: CommandLineTool
id: tensorboard.cwl
inputs:
- id: reload_interval
  doc: How often the backend should load more data.
  type: string
  inputBinding:
    prefix: --reload_interval
outputs: []
cwlVersion: v1.1
baseCommand:
- tensorboard
