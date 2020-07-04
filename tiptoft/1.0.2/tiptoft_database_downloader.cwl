class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tiptoft_database_downloader.cwl
inputs:
- id: verbose
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: output_prefix
  doc: Output prefix
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tiptoft_database_downloader
