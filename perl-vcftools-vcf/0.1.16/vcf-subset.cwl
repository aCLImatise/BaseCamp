#!/usr/bin/env cwl-runner

baseCommand:
- vcf-subset
class: CommandLineTool
cwlVersion: v1.0
id: vcf-subset
inputs:
- doc: Remove alternate alleles if not found in the subset
  id: trim_alt_alleles
  inputBinding:
    prefix: --trim-alt-alleles
  type: boolean
- doc: File or comma-separated list of columns to keep in the vcf file. If file, one
    column per row
  id: columns
  inputBinding:
    prefix: --columns
  type: string
- doc: Exclude rows not containing variants.
  id: exclude_ref
  inputBinding:
    prefix: --exclude-ref
  type: boolean
- doc: Proceed anyway even if VCF does not contain some of the samples.
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: Print only rows where only the subset columns carry an alternate allele.
  id: private
  inputBinding:
    prefix: --private
  type: boolean
- doc: Replace the excluded types with reference allele instead of dot.
  id: replace_with_ref
  inputBinding:
    prefix: --replace-with-ref
  type: boolean
- doc: 'Comma-separated list of variant types to include: ref,SNPs,indels,MNPs,other.'
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: Do not exclude rows without calls.
  id: keep_uncalled
  inputBinding:
    prefix: --keep-uncalled
  type: boolean
