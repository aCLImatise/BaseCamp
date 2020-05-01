#!/usr/bin/env cwl-runner

baseCommand:
- vcfclassify
class: CommandLineTool
cwlVersion: v1.0
id: vcfclassify
inputs:
- doc: ''
  id: vcf_file
  inputBinding:
    position: 0
  type: string
