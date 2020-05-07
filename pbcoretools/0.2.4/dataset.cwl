class: CommandLineTool
id: dataset.cwl
inputs:
- id: log_file
  doc: 'Write the log to file. Default(None) will write to stdout. (default: None)'
  type: string
  inputBinding:
    prefix: --log-file
- id: log_level
  doc: 'Set log level (default: WARNING)'
  type: string
  inputBinding:
    prefix: --log-level
- id: debug
  doc: 'Alias for setting log level to DEBUG (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: 'Alias for setting log level to CRITICAL to suppress output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: 'Set the verbosity level. (default: None)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: strict
  doc: 'Turn on strict tests, raise all errors (default: False)'
  type: boolean
  inputBinding:
    prefix: --strict
- id: skip_counts
  doc: 'Skip updating NumRecords and TotalLength counts (default: False)'
  type: boolean
  inputBinding:
    prefix: --skipCounts
outputs: []
cwlVersion: v1.1
baseCommand:
- dataset
