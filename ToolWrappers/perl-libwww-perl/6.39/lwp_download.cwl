class: CommandLineTool
id: lwp_download.cwl
inputs:
- id: in_save_file_ascii
  doc: save the file in ASCII mode
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_use_http_headers
  doc: use HTTP headers to guess output filename
  type: File?
  inputBinding:
    prefix: -s
- id: in_save
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_url
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_http
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_headers
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_ascii
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_guess
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_use_http_headers
  doc: use HTTP headers to guess output filename
  type: File?
  outputBinding:
    glob: $(inputs.in_use_http_headers)
hints: []
cwlVersion: v1.1
baseCommand:
- lwp-download
