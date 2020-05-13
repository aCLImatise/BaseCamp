class: CommandLineTool
id: planemo_virtualenv_OPTIONS.cwl
inputs:
- id: virtual_env_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- virtualenv
- OPTIONS
