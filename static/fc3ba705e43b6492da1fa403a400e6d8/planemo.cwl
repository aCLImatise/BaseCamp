class: CommandLineTool
id: planemo.cwl
inputs:
- id: verbose
  doc: Enables verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: config
  doc: Planemo configuration YAML file.
  type: string
  inputBinding:
    prefix: --config
- id: directory
  doc: Workspace for planemo.
  type: string
  inputBinding:
    prefix: --directory
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
