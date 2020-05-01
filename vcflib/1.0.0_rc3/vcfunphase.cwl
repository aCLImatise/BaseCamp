#!/usr/bin/env cwl-runner

baseCommand:
- vcfunphase
class: CommandLineTool
cwlVersion: v1.0
id: vcfunphase
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
