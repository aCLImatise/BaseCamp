class: CommandLineTool
id: jannovar_db_list.cwl
inputs:
- id: jan_novar_cli
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: db_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: data_source_list
  doc: INI file with data source list
  type: string
  inputBinding:
    prefix: --data-source-list
- id: report_no_progress
  doc: Disable progress report, more quiet mode
  type: boolean
  inputBinding:
    prefix: --report-no-progress
- id: verbose
  doc: Enable verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: very_verbose
  doc: Enable very verbose mode
  type: boolean
  inputBinding:
    prefix: --very-verbose
- id: http_proxy
  doc: Set HTTP proxy to use, if any
  type: string
  inputBinding:
    prefix: --http-proxy
- id: https_proxy
  doc: Set HTTPS proxy to use, if any
  type: string
  inputBinding:
    prefix: --https-proxy
- id: ftp_proxy
  doc: Set FTP proxy to use, if any
  type: string
  inputBinding:
    prefix: --ftp-proxy
outputs: []
cwlVersion: v1.1
baseCommand:
- jannovar
- db-list
