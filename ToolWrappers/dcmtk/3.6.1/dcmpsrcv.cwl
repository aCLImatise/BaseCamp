class: CommandLineTool
id: dcmpsrcv.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet       quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose     verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug       debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_log_level
  doc: "[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level\
    \ l for the logger"
  type: boolean
  inputBinding:
    prefix: --log-level
- id: in_log_config
  doc: "[f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: --log-config
- id: in__terminate_terminate
  doc: --terminate   terminate all running receivers
  type: boolean
  inputBinding:
    prefix: -t
- id: in_config_file
  doc: configuration file to be read
  type: File
  inputBinding:
    position: 0
- id: in_receiver_id
  doc: identifier of receiver in config file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dcmpsrcv
