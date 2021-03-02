class: CommandLineTool
id: fc_phase.py.cwl
inputs:
- id: in_logging_config_fn
  doc: "Optional standard Python logging config (default: None)\n"
  type: string?
  inputBinding:
    prefix: --logging-config-fn
- id: in_config_fn
  doc: 'Configuration file. (This needs its own help section. Note: smrt_bin is deprecated,
    but if supplied will be appended to PATH.)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_phase.py
