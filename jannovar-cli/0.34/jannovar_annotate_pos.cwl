class: CommandLineTool
id: jannovar_annotate_pos.cwl
inputs:
- id: database
  doc: Path to database .ser file
  type: string
  inputBinding:
    prefix: --database
- id: genomic_change
  doc: Genomic change to annotate, you can give multiple ones
  type: string
  inputBinding:
    prefix: --genomic-change
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
- annotate-pos
