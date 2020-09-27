class: CommandLineTool
id: busco_configurator.py.cwl
inputs:
- id: in_config_dot_in_idot_default
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_your_config_do_tini
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- busco_configurator.py
