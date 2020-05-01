#!/usr/bin/env cwl-runner

baseCommand:
- vcf2dag
class: CommandLineTool
cwlVersion: v1.0
id: vcf2dag
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: FASTA reference file.
  id: reference
  inputBinding:
    prefix: --reference
  type: File
