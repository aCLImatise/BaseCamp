#!/usr/bin/env cwl-runner

baseCommand:
- vcf-merge
class: CommandLineTool
cwlVersion: v1.0
id: vcf-merge
inputs:
- doc: <snps|indels|both|any|none>      treat as identical sites with differing alleles
    [any]
  id: collapse
  inputBinding:
    prefix: --collapse
  type: boolean
- doc: If there should be two consecutive rows with the same chr:pos, print only the
    first one.
  id: remove_duplicates
  inputBinding:
    prefix: --remove-duplicates
  type: boolean
- doc: Use the provided VCF header
  id: vcf_header
  inputBinding:
    prefix: --vcf-header
  type: File
- doc: <list|file>                       Do only the given regions (comma-separated
    list or one region per line in a file).
  id: regions
  inputBinding:
    prefix: --regions
  type: boolean
- doc: Use the REF allele instead of the default missing genotype. Because it is not
    obvious what ploidy should be used, a user-defined string is used instead (e.g.
    0/0).
  id: ref_for_missing
  inputBinding:
    prefix: --ref-for-missing
  type: string
- doc: Try to be a bit more silent, no warnings about duplicate lines.
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: If set, redundant ALTs will be removed
  id: trim_alts
  inputBinding:
    prefix: --trim-ALTs
  type: boolean
