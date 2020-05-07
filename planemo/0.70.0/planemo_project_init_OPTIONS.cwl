class: CommandLineTool
id: planemo_project_init_OPTIONS.cwl
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
- project_init
- OPTIONS
