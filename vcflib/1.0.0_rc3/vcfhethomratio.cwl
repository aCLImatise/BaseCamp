#!/usr/bin/env cwl-runner

baseCommand:
- vcfhethomratio
class: CommandLineTool
cwlVersion: v1.0
id: vcfhethomratio
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
