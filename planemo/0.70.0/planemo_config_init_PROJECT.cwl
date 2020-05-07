class: CommandLineTool
id: planemo_config_init_PROJECT.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: project
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- config_init
- PROJECT
