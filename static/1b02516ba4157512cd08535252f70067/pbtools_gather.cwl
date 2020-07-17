class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pbtools_gather.cwl
inputs:
- id: log_file
  doc: 'Write the log to file. Default(None) will write to stdout. (default: None)'
  type: string
  inputBinding:
    prefix: --log-file
- id: log_level
  doc: 'Set log level (default: INFO)'
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
- id: join_contigs
  doc: 'Merge split contigs (default: False)'
  type: boolean
  inputBinding:
    prefix: --join-contigs
- id: output_file
  doc: Gathered output file
  type: string
  inputBinding:
    position: 0
- id: chunked_files
  doc: Chunked input files
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pbtools-gather
