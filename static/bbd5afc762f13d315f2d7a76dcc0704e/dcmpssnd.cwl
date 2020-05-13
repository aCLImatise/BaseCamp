class: CommandLineTool
id: dcmpssnd.cwl
inputs:
- id: config_file
  doc: configuration file to be read
  type: string
  inputBinding:
    position: 0
- id: target
  doc: symbolic identifier of send target in config file
  type: string
  inputBinding:
    position: 1
- id: study
  doc: study instance UID of study in database to be sent
  type: string
  inputBinding:
    position: 2
- id: series
  doc: 'series instance UID (default: send complete study)'
  type: string
  inputBinding:
    position: 3
- id: instance
  doc: 'SOP instance UID (default: send complete series)'
  type: string
  inputBinding:
    position: 4
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
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmpssnd
