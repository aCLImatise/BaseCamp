#!/usr/bin/env cwl-runner

baseCommand:
- dataset
class: CommandLineTool
cwlVersion: v1.0
id: dataset
inputs:
- doc: 'Write the log to file. Default(None) will write to stdout. (default: None)'
  id: log_file
  inputBinding:
    prefix: --log-file
  type: string
- doc: 'Set log level (default: WARNING)'
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
- doc: 'Turn on strict tests, raise all errors (default: False)'
  id: strict
  inputBinding:
    prefix: --strict
  type: boolean
- doc: 'Skip updating NumRecords and TotalLength counts (default: False)'
  id: skip_counts
  inputBinding:
    prefix: --skipCounts
  type: boolean
