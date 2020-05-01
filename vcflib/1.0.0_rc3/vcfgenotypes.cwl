#!/usr/bin/env cwl-runner

baseCommand:
- vcfgenotypes
class: CommandLineTool
cwlVersion: v1.0
id: vcfgenotypes
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
