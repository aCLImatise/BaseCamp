class: CommandLineTool
id: ../../../ped_parser.cwl
inputs:
- id: log_file
  doc: Path to log file. If none logging is printed to stderr.
  type: File
  inputBinding:
    prefix: --logfile
- id: loglevel
  doc: '[DEBUG|INFO|WARNING|ERROR|CRITICAL] Set the level of log output.'
  type: boolean
  inputBinding:
    prefix: --loglevel
- id: family_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ped_parser
