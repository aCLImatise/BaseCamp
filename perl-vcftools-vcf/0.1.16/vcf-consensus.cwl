#!/usr/bin/env cwl-runner

baseCommand:
- vcf-consensus
class: CommandLineTool
cwlVersion: v1.0
id: vcf-consensus
inputs:
- doc: Apply only variants for the given haplotype (1,2)
  id: haplotype
  inputBinding:
    prefix: --haplotype
  type: long
- doc: Apply variants in the form of IUPAC ambiguity codes
  id: iupac_codes
  inputBinding:
    prefix: --iupac-codes
  type: boolean
- doc: If not given, all variants are applied
  id: sample
  inputBinding:
    prefix: --sample
  type: string
