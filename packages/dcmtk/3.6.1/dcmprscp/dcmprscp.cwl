class: CommandLineTool
id: dcmprscp.cwl
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
- id: in__logfile_write
  doc: --logfile     write a log file (not with --log-config)
  type: boolean
  inputBinding:
    prefix: -l
- id: in__config_stringprocess
  doc: "--config      [f]ilename: string\nprocess using settings from configuration\
    \ file"
  type: boolean
  inputBinding:
    prefix: -c
- id: in__printer_ame
  doc: "--printer     [n]ame: string (default: 1st printer in config file)\nselect\
    \ printer with identifier n from config file"
  type: boolean
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dcmprscp
