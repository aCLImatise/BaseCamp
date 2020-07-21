class: CommandLineTool
id: ../../../jannovar_rest_server.cwl
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
- id: show_all
  doc: Show all effects
  type: boolean
  inputBinding:
    prefix: --show-all
- id: no_three_prime_shifting
  doc: Disable shifting towards 3' of transcript
  type: boolean
  inputBinding:
    prefix: --no-3-prime-shifting
- id: three_letter_amino_acids
  doc: Enable usage of 3 letter amino acid codes
  type: boolean
  inputBinding:
    prefix: --3-letter-amino-acids
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
- id: rest_server
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- jannovar
- rest-server
