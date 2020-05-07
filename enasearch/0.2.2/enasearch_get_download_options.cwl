class: CommandLineTool
id: enasearch_get_download_options.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- enasearch
- get_download_options
