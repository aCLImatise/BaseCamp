#!/usr/bin/env cwl-runner

baseCommand:
- vcfglxgt
class: CommandLineTool
cwlVersion: v1.0
id: vcfglxgt
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: only apply to null and partly-null genotypes
  id: fix_null_genotypes
  inputBinding:
    prefix: --fix-null-genotypes
  type: boolean
