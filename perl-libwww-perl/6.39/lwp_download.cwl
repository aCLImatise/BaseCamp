class: CommandLineTool
id: ../../../lwp_download.cwl
inputs:
- id: save_file_ascii
  doc: save the file in ASCII mode
  type: boolean
  inputBinding:
    prefix: -a
- id: use_http_headers
  doc: use HTTP headers to guess output filename
  type: boolean
  inputBinding:
    prefix: -s
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: local_path
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- lwp-download
