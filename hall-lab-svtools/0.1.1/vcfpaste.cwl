#!/usr/bin/env cwl-runner

baseCommand:
- vcfpaste
class: CommandLineTool
cwlVersion: v1.0
id: vcfpaste
inputs:
- doc: VCF file(s) to join
  id: vcf
  inputBinding:
    position: 0
  type: string
- doc: VCF file to set first 8 columns of variant info [first file in vcf_list]
  id: master
  inputBinding:
    prefix: --master
  type: string
