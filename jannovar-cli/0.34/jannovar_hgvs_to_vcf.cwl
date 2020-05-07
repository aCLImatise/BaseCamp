class: CommandLineTool
id: jannovar_hgvs_to_vcf.cwl
inputs:
- id: reference_fast_a
  doc: Path to reference FASTA file
  type: string
  inputBinding:
    prefix: --reference-fasta
- id: database
  doc: Path to database .ser file
  type: string
  inputBinding:
    prefix: --database
- id: input_txt
  doc: Input file with HGVS transcript-level changes, line-by-line
  type: string
  inputBinding:
    prefix: --input-txt
- id: output_vcf
  doc: Output VCF file with chromosome-level changes
  type: string
  inputBinding:
    prefix: --output-vcf
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
- hgvs-to-vcf
