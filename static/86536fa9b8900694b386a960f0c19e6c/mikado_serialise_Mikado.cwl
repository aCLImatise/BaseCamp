class: CommandLineTool
id: ../../../mikado_serialise_Mikado.cwl
inputs:
- id: optional_log_file
  doc: '[LOG], --log [LOG] Optional log file. Default: stderr'
  type: boolean
  inputBinding:
    prefix: -l
- id: log_level
  doc: 'Log level. Default: derived from the configuration; if absent, INFO'
  type: string
  inputBinding:
    prefix: --log-level
- id: seed
  doc: Random seed number.
  type: string
  inputBinding:
    prefix: --seed
- id: start_method
  doc: ''
  type: string
  inputBinding:
    prefix: --start-method
- id: db
  doc: 'Optional output database. Default: derived from json_conf'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mikado
- serialise
- Mikado
