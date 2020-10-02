class: CommandLineTool
id: jannovar_rest_server.cwl
inputs:
- id: in_d
  doc: '[--show-all] [--no-3-prime-shifting]'
  type: long
  inputBinding:
    prefix: -d
- id: in_host
  doc: Host specification to listen on
  type: string
  inputBinding:
    prefix: --host
- id: in_port
  doc: Port to listen on
  type: string
  inputBinding:
    prefix: --port
- id: in_database
  doc: "Path to  .ser  file(s)  with  database,  naming is\n$genome_$label; can be\
    \ given multiple times"
  type: File
  inputBinding:
    prefix: --database
- id: in_show_all
  doc: Show all effects
  type: boolean
  inputBinding:
    prefix: --show-all
- id: in_no_three_prime_shifting
  doc: Disable shifting towards 3' of transcript
  type: boolean
  inputBinding:
    prefix: --no-3-prime-shifting
- id: in_three_letter_amino_acids
  doc: Enable usage of 3 letter amino acid codes
  type: boolean
  inputBinding:
    prefix: --3-letter-amino-acids
- id: in_report_no_progress
  doc: Disable progress report, more quiet mode
  type: boolean
  inputBinding:
    prefix: --report-no-progress
- id: in_verbose
  doc: Enable verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_very_verbose
  doc: Enable very verbose mode
  type: boolean
  inputBinding:
    prefix: --very-verbose
- id: in_http_proxy
  doc: Set HTTP proxy to use, if any
  type: string
  inputBinding:
    prefix: --http-proxy
- id: in_https_proxy
  doc: Set HTTPS proxy to use, if any
  type: string
  inputBinding:
    prefix: --https-proxy
- id: in_ftp_proxy
  doc: Set FTP proxy to use, if any
  type: string
  inputBinding:
    prefix: --ftp-proxy
- id: in_jan_novar_cli
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_rest_server
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jannovar
- rest-server
