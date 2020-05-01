#!/usr/bin/env cwl-runner

baseCommand:
- vcfcommonsamples
class: CommandLineTool
cwlVersion: v1.0
id: vcfcommonsamples
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
