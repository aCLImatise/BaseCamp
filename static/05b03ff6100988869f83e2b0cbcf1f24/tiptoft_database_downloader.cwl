class: CommandLineTool
id: tiptoft_database_downloader.cwl
inputs:
- id: output_prefix
  doc: Output prefix
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- tiptoft_database_downloader
