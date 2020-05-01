#!/usr/bin/env cwl-runner

baseCommand:
- incorporateVCF.py
class: CommandLineTool
cwlVersion: v1.0
id: incorporatevcf.py
inputs:
- doc: Threads to run
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: '[FASTA], --fasta [FASTA] The fasta file to incorporate changes into.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[OUT], --out [OUT] The file to write resulting fasta file to.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: The VCF file to use.
  id: vcf
  inputBinding:
    prefix: --vcf
  type: string
- doc: Don't include homozygous variants (default to include)
  id: no_homozygous
  inputBinding:
    prefix: --no-homozygous
  type: boolean
- doc: Use heterozygous variants
  id: heterozygous
  inputBinding:
    prefix: --heterozygous
  type: boolean
- doc: Don't use SNPs (default to true).
  id: no_snps
  inputBinding:
    prefix: --no-snps
  type: boolean
- doc: Use Deletions.
  id: dels
  inputBinding:
    prefix: --dels
  type: boolean
- doc: Use Insertions.
  id: ins
  inputBinding:
    prefix: --ins
  type: boolean
- doc: The Individual to use.
  id: individual
  inputBinding:
    prefix: --individual
  type: string
- doc: Should 'chr' be appended to the chromosome column?.
  id: append_chromosome
  inputBinding:
    prefix: --append-chromosome
  type: boolean
