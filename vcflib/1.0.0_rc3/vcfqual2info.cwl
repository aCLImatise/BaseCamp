#!/usr/bin/env cwl-runner

baseCommand:
- vcfqual2info
class: CommandLineTool
cwlVersion: v1.0
id: vcfqual2info
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
