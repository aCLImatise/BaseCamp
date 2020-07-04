class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fc_phase.py.cwl
inputs:
- id: logging_config_fn
  doc: 'Optional standard Python logging config (default: None)'
  type: string
  inputBinding:
    prefix: --logging-config-fn
- id: config_fn
  doc: 'Configuration file. (This needs its own help section. Note: smrt_bin is deprecated,
    but if supplied will be appended to PATH.)'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_phase.py
