class: CommandLineTool
id: fc_unzip.py.cwl
inputs:
- id: in_target
  doc: 'target pipeline: clr=regular; ccs=only ccs data (default: clr)'
  type: string?
  inputBinding:
    prefix: --target
- id: in_logging_config_fn
  doc: "Optional standard Python logging config (default: None)\n"
  type: string?
  inputBinding:
    prefix: --logging-config-fn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_unzip.py
