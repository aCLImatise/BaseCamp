class: CommandLineTool
id: planemo_travis_init_OPTIONS.cwl
inputs:
- id: project
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- travis_init
- OPTIONS
