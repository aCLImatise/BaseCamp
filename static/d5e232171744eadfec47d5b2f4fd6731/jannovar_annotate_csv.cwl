class: CommandLineTool
id: ../../../jannovar_annotate_csv.cwl
inputs:
- id: database
  doc: Path to database .ser file
  type: string
  inputBinding:
    prefix: --database
- id: input
  doc: CSV file
  type: string
  inputBinding:
    prefix: --input
- id: chr
  doc: Column of chr (1 based)
  type: string
  inputBinding:
    prefix: --chr
- id: pos
  doc: Column of pos (1 based)
  type: string
  inputBinding:
    prefix: --pos
- id: ref
  doc: Column of ref (1 based)
  type: string
  inputBinding:
    prefix: --ref
- id: alt
  doc: Column of alt (1 based)
  type: string
  inputBinding:
    prefix: --alt
- id: type
  doc: 'Type of csv file. '
  type: string
  inputBinding:
    prefix: --type
- id: header
  doc: 'Set if the file contains a header. '
  type: boolean
  inputBinding:
    prefix: --header
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
- id: annotate_csv
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- jannovar
- annotate-csv
