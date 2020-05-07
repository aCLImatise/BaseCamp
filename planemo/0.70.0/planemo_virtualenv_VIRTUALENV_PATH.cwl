class: CommandLineTool
id: planemo_virtualenv_VIRTUALENV_PATH.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: virtual_env_path
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- virtualenv
- VIRTUALENV_PATH
