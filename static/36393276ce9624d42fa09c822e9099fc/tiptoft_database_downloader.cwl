class: CommandLineTool
id: tiptoft_database_downloader.cwl
inputs:
- id: in_verbose
  doc: 'Turn on debugging (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_output_prefix
  doc: Output prefix
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tiptoft_database_downloader
