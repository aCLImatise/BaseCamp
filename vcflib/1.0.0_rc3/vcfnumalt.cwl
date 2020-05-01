#!/usr/bin/env cwl-runner

baseCommand:
- vcfnumalt
class: CommandLineTool
cwlVersion: v1.0
id: vcfnumalt
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
