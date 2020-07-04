class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fc_unzip.py.cwl
inputs:
- id: target
  doc: 'target pipeline: clr=regular; ccs=only ccs data (default: clr)'
  type: string
  inputBinding:
    prefix: --target
- id: logging_config_fn
  doc: 'Optional standard Python logging config (default: None)'
  type: string
  inputBinding:
    prefix: --logging-config-fn
- id: config_fn
  doc: 'Configuration file. (TODO: This needs its own help section, or at least a
    link to a webpage.)'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_unzip.py
