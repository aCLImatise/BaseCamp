class: CommandLineTool
id: jannovar_db_list.cwl
inputs:
- id: in_data_source_list
  doc: INI file with data source list
  type: File?
  inputBinding:
    prefix: --data-source-list
- id: in_report_no_progress
  doc: Disable progress report, more quiet mode
  type: boolean?
  inputBinding:
    prefix: --report-no-progress
- id: in_verbose
  doc: Enable verbose mode
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_very_verbose
  doc: Enable very verbose mode
  type: boolean?
  inputBinding:
    prefix: --very-verbose
- id: in_http_proxy
  doc: Set HTTP proxy to use, if any
  type: string?
  inputBinding:
    prefix: --http-proxy
- id: in_https_proxy
  doc: Set HTTPS proxy to use, if any
  type: string?
  inputBinding:
    prefix: --https-proxy
- id: in_ftp_proxy
  doc: Set FTP proxy to use, if any
  type: string?
  inputBinding:
    prefix: --ftp-proxy
- id: in_jan_novar_cli
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_db_list
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jannovar-cli:0.35--0
cwlVersion: v1.1
baseCommand:
- jannovar
- db-list
