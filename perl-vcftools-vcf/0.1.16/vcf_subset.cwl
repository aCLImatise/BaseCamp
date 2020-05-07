class: CommandLineTool
id: vcf_subset.cwl
inputs:
- id: trim_alt_alleles
  doc: Remove alternate alleles if not found in the subset
  type: boolean
  inputBinding:
    prefix: --trim-alt-alleles
- id: columns
  doc: File or comma-separated list of columns to keep in the vcf file. If file, one
    column per row
  type: string
  inputBinding:
    prefix: --columns
- id: exclude_ref
  doc: Exclude rows not containing variants.
  type: boolean
  inputBinding:
    prefix: --exclude-ref
- id: force
  doc: Proceed anyway even if VCF does not contain some of the samples.
  type: boolean
  inputBinding:
    prefix: --force
- id: private
  doc: Print only rows where only the subset columns carry an alternate allele.
  type: boolean
  inputBinding:
    prefix: --private
- id: replace_with_ref
  doc: Replace the excluded types with reference allele instead of dot.
  type: boolean
  inputBinding:
    prefix: --replace-with-ref
- id: type
  doc: 'Comma-separated list of variant types to include: ref,SNPs,indels,MNPs,other.'
  type: string
  inputBinding:
    prefix: --type
- id: keep_uncalled
  doc: Do not exclude rows without calls.
  type: boolean
  inputBinding:
    prefix: --keep-uncalled
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-subset
