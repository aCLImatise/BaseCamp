class: CommandLineTool
id: dataset.cwl
inputs:
- id: in_log_file
  doc: "Write the log to file. Default(None) will write to\nstdout. (default: None)"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_log_level
  doc: 'Set log level (default: WARNING)'
  type: string?
  inputBinding:
    prefix: --log-level
- id: in_debug
  doc: 'Alias for setting log level to DEBUG (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: "Alias for setting log level to CRITICAL to suppress\noutput. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: 'Set the verbosity level. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_strict
  doc: "Turn on strict tests, raise all errors (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_skip_counts
  doc: "Skip updating NumRecords and TotalLength counts\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --skipCounts
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dataset
