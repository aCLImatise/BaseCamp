class: CommandLineTool
id: vcf_merge.cwl
inputs:
- id: collapse
  doc: <snps|indels|both|any|none>      treat as identical sites with differing alleles
    [any]
  type: boolean
  inputBinding:
    prefix: --collapse
- id: remove_duplicates
  doc: If there should be two consecutive rows with the same chr:pos, print only the
    first one.
  type: boolean
  inputBinding:
    prefix: --remove-duplicates
- id: vcf_header
  doc: Use the provided VCF header
  type: File
  inputBinding:
    prefix: --vcf-header
- id: regions
  doc: <list|file>                       Do only the given regions (comma-separated
    list or one region per line in a file).
  type: boolean
  inputBinding:
    prefix: --regions
- id: ref_for_missing
  doc: Use the REF allele instead of the default missing genotype. Because it is not
    obvious what ploidy should be used, a user-defined string is used instead (e.g.
    0/0).
  type: string
  inputBinding:
    prefix: --ref-for-missing
- id: silent
  doc: Try to be a bit more silent, no warnings about duplicate lines.
  type: boolean
  inputBinding:
    prefix: --silent
- id: trim_alts
  doc: If set, redundant ALTs will be removed
  type: boolean
  inputBinding:
    prefix: --trim-ALTs
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-merge
