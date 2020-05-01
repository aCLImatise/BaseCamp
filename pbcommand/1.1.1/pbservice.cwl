#!/usr/bin/env cwl-runner

baseCommand:
- pbservice
class: CommandLineTool
cwlVersion: v1.0
id: pbservice
inputs:
- doc: 'Write the log to file. Default(None) will write to stdout. (default: None)'
  id: log_file
  inputBinding:
    prefix: --log-file
  type: string
- doc: 'Set log level (default: INFO)'
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Alias for setting log level to DEBUG (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: 'Alias for setting log level to CRITICAL to suppress output. (default: False)'
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Set the verbosity level. (default: None)'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
