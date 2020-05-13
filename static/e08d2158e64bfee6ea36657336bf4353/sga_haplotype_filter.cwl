class: CommandLineTool
id: sga_haplotype_filter.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: reads
  doc: load the FM-index of the reads in FILE
  type: File
  inputBinding:
    prefix: --reads
- id: reference
  doc: load the reference genome from FILE
  type: string
  inputBinding:
    prefix: --reference
- id: haploid
  doc: force use of the haploid model
  type: boolean
  inputBinding:
    prefix: --haploid
- id: out_prefix
  doc: write the passed haplotypes and variants to STR.vcf and STR.fa
  type: string
  inputBinding:
    prefix: --out-prefix
- id: threads
  doc: 'use NUM threads to compute the overlaps (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- haplotype-filter
