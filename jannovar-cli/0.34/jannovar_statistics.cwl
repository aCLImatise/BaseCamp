class: CommandLineTool
id: jannovar_statistics.cwl
inputs:
- id: jan_novar_cli
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: statistics
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: report_no_progress
  doc: ''
  type: boolean
  inputBinding:
    prefix: --report-no-progress
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: vv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -vv
- id: http_proxy
  doc: ''
  type: string
  inputBinding:
    prefix: --http-proxy
- id: https_proxy
  doc: ''
  type: string
  inputBinding:
    prefix: --https-proxy
- id: ftp_proxy
  doc: ''
  type: string
  inputBinding:
    prefix: --ftp-proxy
outputs: []
cwlVersion: v1.1
baseCommand:
- jannovar
- statistics
