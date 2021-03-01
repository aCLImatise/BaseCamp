class: CommandLineTool
id: sga_haplotype_filter.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_reads
  doc: load the FM-index of the reads in FILE
  type: File?
  inputBinding:
    prefix: --reads
- id: in_reference
  doc: load the reference genome from FILE
  type: File?
  inputBinding:
    prefix: --reference
- id: in_haploid
  doc: force use of the haploid model
  type: boolean?
  inputBinding:
    prefix: --haploid
- id: in_out_prefix
  doc: write the passed haplotypes and variants to STR.vcf and STR.fa
  type: string?
  inputBinding:
    prefix: --out-prefix
- id: in_threads
  doc: 'use NUM threads to compute the overlaps (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sga
- haplotype-filter
