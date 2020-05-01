#!/usr/bin/env cwl-runner

baseCommand:
- vcfnormalizesvs
class: CommandLineTool
cwlVersion: v1.0
id: vcfnormalizesvs
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: var_vcf
  inputBinding:
    position: 1
  type: string
- doc: / --reference <ref.fa>   FASTA-format reference genome from which to pull SV
    sequences.
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: / --insertions <ins.fa>   FASTA-format insertion sequences, with IDs matching
    the ALT allele tags in the vcf
  id: i
  inputBinding:
    prefix: -i
  type: boolean
