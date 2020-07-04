class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sam2vcf.pl.cwl
inputs:
- id: indels_only
  doc: Ignore SNPs.
  type: boolean
  inputBinding:
    prefix: --indels-only
- id: refseq
  doc: The reference sequence, required when indels are present.
  type: File
  inputBinding:
    prefix: --refseq
- id: keep_ref
  doc: Print reference alleles as well.
  type: boolean
  inputBinding:
    prefix: --keep-ref
- id: snps_only
  doc: Ignore indels.
  type: boolean
  inputBinding:
    prefix: --snps-only
- id: column_title
  doc: The column title.
  type: string
  inputBinding:
    prefix: --column-title
- id: in_dot_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sam2vcf.pl
