#!/usr/bin/env cwl-runner

baseCommand:
- vcf2fasta
class: CommandLineTool
cwlVersion: v1.0
id: vcf2fasta
inputs:
- doc: ''
  id: file
  inputBinding:
    position: 0
  type: File
- doc: Use this reference when decomposing samples.
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: Affix this output prefix to each file, none by default
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: Set a default ploidy for samples which do not have information in the first
    record (2).
  id: default_ploidy
  inputBinding:
    prefix: --default-ploidy
  type: string
