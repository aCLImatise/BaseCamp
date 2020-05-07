class: CommandLineTool
id: jannovar_rest_server.cwl
inputs:
- id: host
  doc: Host specification to listen on
  type: string
  inputBinding:
    prefix: --host
- id: port
  doc: Port to listen on
  type: string
  inputBinding:
    prefix: --port
- id: database
  doc: Path to .ser file(s) with database, naming is $genome_$label; can be given
    multiple times
  type: string
  inputBinding:
    prefix: --database
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
- rest-server
