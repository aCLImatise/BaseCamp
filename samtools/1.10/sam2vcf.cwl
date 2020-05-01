#!/usr/bin/env cwl-runner

baseCommand:
- sam2vcf.pl
class: CommandLineTool
cwlVersion: v1.0
id: sam2vcf.pl
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: in_pile_up
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: out_vcf
  inputBinding:
    position: 2
  type: string
- doc: Ignore SNPs.
  id: indels_only
  inputBinding:
    prefix: --indels-only
  type: boolean
- doc: The reference sequence, required when indels are present.
  id: refseq
  inputBinding:
    prefix: --refseq
  type: File
- doc: Print reference alleles as well.
  id: keep_ref
  inputBinding:
    prefix: --keep-ref
  type: boolean
- doc: Ignore indels.
  id: snps_only
  inputBinding:
    prefix: --snps-only
  type: boolean
- doc: The column title.
  id: column_title
  inputBinding:
    prefix: --column-title
  type: string
