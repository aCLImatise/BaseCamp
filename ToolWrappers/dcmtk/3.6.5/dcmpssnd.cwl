class: CommandLineTool
id: dcmpssnd.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean?
  inputBinding:
    prefix: --arguments
- id: in_quiet
  doc: quiet mode, print no warnings and errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose mode, print processing details
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: debug mode, print debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_log_level
  doc: "[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level\
    \ l for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_config
  doc: "[f]ilename: string\nuse config file f for the logger\n"
  type: boolean?
  inputBinding:
    prefix: --log-config
- id: in_config_file
  doc: configuration file to be read
  type: File
  inputBinding:
    position: 0
- id: in_target
  doc: symbolic identifier of send target in config file
  type: string
  inputBinding:
    position: 1
- id: in_study
  doc: study instance UID of study in database to be sent
  type: string
  inputBinding:
    position: 2
- id: in_series
  doc: 'series instance UID (default: send complete study)'
  type: string
  inputBinding:
    position: 3
- id: in_instance
  doc: 'SOP instance UID (default: send complete series)'
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0
cwlVersion: v1.1
baseCommand:
- dcmpssnd
