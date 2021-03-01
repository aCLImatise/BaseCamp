class: CommandLineTool
id: jannovar_statistics.cwl
inputs:
- id: in_input_vcf
  doc: Path to input VCF file
  type: File?
  inputBinding:
    prefix: --input-vcf
- id: in_output_report
  doc: Path to output report TXT file
  type: File?
  inputBinding:
    prefix: --output-report
- id: in_database
  doc: Path to database .ser file
  type: File?
  inputBinding:
    prefix: --database
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
- id: in_statistics
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_report
  doc: Path to output report TXT file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_report)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jannovar-cli:0.35--0
cwlVersion: v1.1
baseCommand:
- jannovar
- statistics
