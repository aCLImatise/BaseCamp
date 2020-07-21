class: CommandLineTool
id: ../../../busco_configurator.py.cwl
inputs:
- id: config_dot_in_idot_default
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: your_config_do_tini
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- busco_configurator.py
