class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lwp_download.cwl
inputs:
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
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
outputs: []
cwlVersion: v1.1
baseCommand:
- lwp-download
