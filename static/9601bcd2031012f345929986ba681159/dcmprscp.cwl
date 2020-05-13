class: CommandLineTool
id: dcmprscp.cwl
inputs:
- id: q
  doc: --quiet       quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose     verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug       debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: log_level
  doc: '[l]evel: string constant (fatal, error, warn, info, debug, trace) use level
    l for the logger'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_config
  doc: '[f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: --log-config
- id: l
  doc: --logfile     write a log file (not with --log-config)
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmprscp
