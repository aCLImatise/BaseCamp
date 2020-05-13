class: CommandLineTool
id: busco_configurator.py.cwl
inputs:
- id: python_3
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: busco_configurator_py
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: config_ini_default
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: your_config_ini
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- busco_configurator.py
