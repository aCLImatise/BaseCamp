class: CommandLineTool
id: pbtools_gather.cwl
inputs:
- id: in_log_file
  doc: "Write the log to file. Default(None) will write to\nstdout. (default: None)"
  type: File
  inputBinding:
    prefix: --log-file
- id: in_log_level
  doc: 'Set log level (default: INFO)'
  type: string
  inputBinding:
    prefix: --log-level
- id: in_debug
  doc: 'Alias for setting log level to DEBUG (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: "Alias for setting log level to CRITICAL to suppress\noutput. (default: False)"
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: 'Set the verbosity level. (default: None)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_join_contigs
  doc: 'Merge split contigs (default: False)'
  type: boolean
  inputBinding:
    prefix: --join-contigs
- id: in_output_file
  doc: Gathered output file
  type: string
  inputBinding:
    position: 0
- id: in_chunked_files
  doc: Chunked input files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pbtools-gather
