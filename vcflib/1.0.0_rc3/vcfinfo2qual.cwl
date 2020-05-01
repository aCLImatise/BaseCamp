#!/usr/bin/env cwl-runner

baseCommand:
- vcfinfo2qual
class: CommandLineTool
cwlVersion: v1.0
id: vcfinfo2qual
inputs:
- doc: ''
  id: key
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: vcf_file
  inputBinding:
    position: 1
  type: string
