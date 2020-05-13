class: CommandLineTool
id: rtg_vcfdecompose.cwl
inputs:
- id: input
  doc: VCF file containing variants to decompose. Use '-' to read from standard input
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: output VCF file name. Use '-' to write to standard output
  type: File
  inputBinding:
    prefix: --output
- id: template
  doc: SDF of the reference genome the variants are called against
  type: string
  inputBinding:
    prefix: --template
- id: break_indels
  doc: set, peel as many SNPs off an indel as possible
  type: string
  inputBinding:
    prefix: --break-indels
- id: break_mnps
  doc: if set, break MNPs into individual SNPs
  type: boolean
  inputBinding:
    prefix: --break-mnps
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: no_header
  doc: prevent VCF header from being written
  type: boolean
  inputBinding:
    prefix: --no-header
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- vcfdecompose
