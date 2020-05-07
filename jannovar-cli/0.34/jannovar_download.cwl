class: CommandLineTool
id: jannovar_download.cwl
inputs:
- id: database
  doc: Name of database to download, can be given multiple times
  type: string
  inputBinding:
    prefix: --database
- id: data_source_list
  doc: INI file with data source list
  type: string
  inputBinding:
    prefix: --data-source-list
- id: download_dir
  doc: Path to download directory
  type: string
  inputBinding:
    prefix: --download-dir
- id: gene_ids
  doc: Optional list of genes to limit creation of database to
  type: string[]
  inputBinding:
    prefix: --gene-ids
- id: output_file
  doc: Optional path to output file
  type: string
  inputBinding:
    prefix: --output-file
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
- download
