#!/usr/bin/env cwl-runner

baseCommand:
- vcfaltcount
class: CommandLineTool
cwlVersion: v1.0
id: vcfaltcount
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
