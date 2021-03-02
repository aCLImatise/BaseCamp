class: CommandLineTool
id: jannovar_annotate_csv.cwl
inputs:
- id: in_r
  doc: '[-t {Default,TDF,RFC4180,Excel,MySQL}]'
  type: long?
  inputBinding:
    prefix: -r
- id: in_database
  doc: Path to database .ser file
  type: File?
  inputBinding:
    prefix: --database
- id: in_input
  doc: CSV file
  type: File?
  inputBinding:
    prefix: --input
- id: in_chr
  doc: Column of chr (1 based)
  type: long?
  inputBinding:
    prefix: --chr
- id: in_pos
  doc: Column of pos (1 based)
  type: long?
  inputBinding:
    prefix: --pos
- id: in_ref
  doc: Column of ref (1 based)
  type: long?
  inputBinding:
    prefix: --ref
- id: in_alt
  doc: Column of alt (1 based)
  type: long?
  inputBinding:
    prefix: --alt
- id: in_type
  doc: Type of csv file.
  type: string?
  inputBinding:
    prefix: --type
- id: in_header
  doc: Set if the file contains a header.
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_show_all
  doc: Show all effects
  type: boolean?
  inputBinding:
    prefix: --show-all
- id: in_no_three_prime_shifting
  doc: Disable shifting towards 3' of transcript
  type: boolean?
  inputBinding:
    prefix: --no-3-prime-shifting
- id: in_three_letter_amino_acids
  doc: Enable usage of 3 letter amino acid codes
  type: boolean?
  inputBinding:
    prefix: --3-letter-amino-acids
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
- id: in_annotate_csv
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
- annotate-csv
