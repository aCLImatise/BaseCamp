#!/usr/bin/env cwl-runner

baseCommand:
- vcf-indel-stats
class: CommandLineTool
cwlVersion: v1.0
id: vcf-indel-stats
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: in_vcf
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: out_txt
  inputBinding:
    position: 2
  type: string
