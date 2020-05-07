class: CommandLineTool
id: lwp_download.cwl
inputs:
- id: a
  doc: save the file in ASCII mode
  type: boolean
  inputBinding:
    prefix: -a
- id: s
  doc: use HTTP headers to guess output filename
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- lwp-download
