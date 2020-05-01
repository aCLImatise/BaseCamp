#!/usr/bin/env cwl-runner

baseCommand:
- fill-aa
class: CommandLineTool
cwlVersion: v1.0
id: fill-aa
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: in_vcf
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: out_vcf
  inputBinding:
    position: 2
  type: string
- doc: Prefix to ancestral allele chromosome files.
  id: ancestral_allele
  inputBinding:
    prefix: --ancestral-allele
  type: string
- doc: 'Variant types to process: all,indel,ref,snp. [all]'
  id: type
  inputBinding:
    prefix: --type
  type: string
