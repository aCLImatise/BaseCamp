class: CommandLineTool
id: ../../../jannovar_statistics.cwl
inputs:
- id: input_vcf
  doc: Path to input VCF file
  type: string
  inputBinding:
    prefix: --input-vcf
- id: output_report
  doc: Path to output report TXT file
  type: string
  inputBinding:
    prefix: --output-report
- id: database
  doc: Path to database .ser file
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
outputs: []
cwlVersion: v1.1
baseCommand:
- jannovar
- statistics
