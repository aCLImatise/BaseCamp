class: CommandLineTool
id: planemo_brew_init.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- brew_init
