class: CommandLineTool
id: jannovar_hgvs_to_vcf.cwl
inputs:
- id: in_reference_fast_a
  doc: Path to reference FASTA file
  type: File?
  inputBinding:
    prefix: --reference-fasta
- id: in_database
  doc: Path to database .ser file
  type: File?
  inputBinding:
    prefix: --database
- id: in_input_txt
  doc: "Input file  with  HGVS  transcript-level  changes,\nline-by-line"
  type: File?
  inputBinding:
    prefix: --input-txt
- id: in_output_vcf
  doc: Output VCF file with chromosome-level changes
  type: File?
  inputBinding:
    prefix: --output-vcf
- id: in_show_all
  doc: Show all effects
  type: string?
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
- id: in_hgvs_to_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_vcf
  doc: Output VCF file with chromosome-level changes
  type: File?
  outputBinding:
    glob: $(inputs.in_output_vcf)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jannovar-cli:0.35--0
cwlVersion: v1.1
baseCommand:
- jannovar
- hgvs-to-vcf
