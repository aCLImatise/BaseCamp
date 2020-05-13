class: CommandLineTool
id: lwp_download.cwl
inputs:
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: l_path
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- lwp-download
