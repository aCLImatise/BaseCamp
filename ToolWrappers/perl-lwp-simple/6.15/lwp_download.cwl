class: CommandLineTool
id: lwp_download.cwl
inputs:
- id: in_a
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
- id: in_url
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_l_path
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lwp-download
