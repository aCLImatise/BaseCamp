class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dcmpsrcv.cwl
inputs:
- id: _quiet_quiet
  doc: --quiet       quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: _verbose_verbose
  doc: --verbose     verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: _debug_debug
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
- id: _terminate_terminate
  doc: --terminate   terminate all running receivers
  type: boolean
  inputBinding:
    prefix: -t
- id: config_file
  doc: configuration file to be read
  type: string
  inputBinding:
    position: 0
- id: receiver_id
  doc: identifier of receiver in config file
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmpsrcv
