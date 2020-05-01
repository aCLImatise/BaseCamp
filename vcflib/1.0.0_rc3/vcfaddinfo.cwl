#!/usr/bin/env cwl-runner

baseCommand:
- vcfaddinfo
class: CommandLineTool
cwlVersion: v1.0
id: vcfaddinfo
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: vcf_file
  inputBinding:
    position: 1
  type: string
