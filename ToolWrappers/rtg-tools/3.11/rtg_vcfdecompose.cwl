class: CommandLineTool
id: rtg_vcfdecompose.cwl
inputs:
- id: in_input
  doc: "VCF file containing variants to decompose. Use '-' to read\nfrom standard\
    \ input"
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: output VCF file name. Use '-' to write to standard output
  type: File
  inputBinding:
    prefix: --output
- id: in_template
  doc: SDF of the reference genome the variants are called
  type: string
  inputBinding:
    prefix: --template
- id: in_break_indels
  doc: set, peel as many SNPs off an indel as possible
  type: string
  inputBinding:
    prefix: --break-indels
- id: in_break_mnps
  doc: if set, break MNPs into individual SNPs
  type: boolean
  inputBinding:
    prefix: --break-mnps
- id: in_no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: in_no_header
  doc: prevent VCF header from being written
  type: boolean
  inputBinding:
    prefix: --no-header
- id: in_against
  doc: Sensitivity Tuning
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output VCF file name. Use '-' to write to standard output
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- rtg
- vcfdecompose
